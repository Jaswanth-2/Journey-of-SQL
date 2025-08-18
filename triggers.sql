DELIMITER $$
CREATE TRIGGER before_insert_student_age
BEFORE INSERT ON student_demograpic
FOR EACH ROW
BEGIN
    SET NEW.age = TIMESTAMPDIFF(YEAR, NEW.DOB, CURDATE());
END$$
DELIMITER ;

CREATE TABLE student_group_log (
    log_id INT AUTO_INCREMENT PRIMARY KEY,
    s_id INT,
    old_group VARCHAR(50),
    new_group VARCHAR(50),
    change_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

DELIMITER $$
CREATE TRIGGER after_update_group
AFTER UPDATE ON student_demograpic
FOR EACH ROW
BEGIN
    IF OLD.s_groups <> NEW.s_groups THEN
        INSERT INTO student_group_log (s_id, old_group, new_group)
        VALUES (OLD.s_id, OLD.s_groups, NEW.s_groups);
    END IF;
END$$
DELIMITER ;

DELIMITER $$
CREATE TRIGGER before_delete_parent
BEFORE DELETE ON parent_details
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM student_demograpic WHERE s_id = OLD.s_id) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Cannot delete parent details while student exists.';
    END IF;
END$$
DELIMITER ;

DELIMITER $$
CREATE TRIGGER after_insert_student_guardian
AFTER INSERT ON student_demograpic
FOR EACH ROW
BEGIN
    IF NOT EXISTS (SELECT 1 FROM parent_details WHERE s_id = NEW.s_id) THEN
        INSERT INTO guardian_details (s_id, guardian_name, relationship, occupation, salary, g_age, contact_number)
        VALUES (NEW.s_id, 'Default Guardian', 'Unknown', 'N/A', 0, 0, '0000000000');
    END IF;
END$$
DELIMITER ;


DELIMITER $$
CREATE TRIGGER before_insert_parent_salary
BEFORE INSERT ON parent_details
FOR EACH ROW
BEGIN
    IF NEW.salary < 0 THEN
        SET NEW.salary = 0;
    END IF;
END$$
DELIMITER ;

DELIMITER $$
CREATE TRIGGER before_update_parent_salary
BEFORE UPDATE ON parent_details
FOR EACH ROW
BEGIN
    IF NEW.salary < 0 THEN
        SET NEW.salary = 0;
    END IF;
END$$
DELIMITER ;



INSERT INTO student_demograpic (s_id, first_Name, last_Name, DOB, gender, s_groups)
VALUES (10, 'Rohit', 'Kumar', '2012-03-15', 'Male', 'Science');
SELECT s_id, first_Name, age FROM student_demograpic WHERE s_id = 10;

UPDATE student_demograpic
SET s_groups = 'Arts'
WHERE s_id = 1;
SELECT * FROM student_group_log;

DELETE FROM parent_details WHERE s_id = 1;

INSERT INTO student_demograpic (s_id, first_Name, last_Name, DOB, gender, s_groups)
VALUES (11, 'Kiran', 'Mehta', '2011-05-20', 'Female', 'Commerce');
SELECT * FROM guardian_details WHERE s_id = 11;

INSERT INTO parent_details (s_id, fathers_name, mothers_name, occupation, salary, f_age, m_age)
VALUES (11, 'Anil Mehta', 'Rekha Mehta', 'Clerk', -30000, 45, 40);
SELECT salary FROM parent_details WHERE s_id = 11;




