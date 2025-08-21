SET GLOBAL event_scheduler = ON;
USE school_students;

CREATE EVENT IF NOT EXISTS delete_old_group_logs
ON SCHEDULE EVERY 1 MONTH
DO
  DELETE FROM student_group_log
  WHERE change_date < NOW() - INTERVAL 1 YEAR;

CREATE EVENT IF NOT EXISTS update_student_age
ON SCHEDULE EVERY 1 YEAR
STARTS '2026-01-01 00:00:00'
DO
  UPDATE student_demograpic
  SET age = TIMESTAMPDIFF(YEAR, DOB, CURDATE());


CREATE EVENT IF NOT EXISTS assign_default_group
ON SCHEDULE EVERY 1 DAY
DO
  UPDATE student_demograpic
  SET s_groups = 'Unassigned'
  WHERE s_groups IS NULL OR s_groups = '';

CREATE EVENT IF NOT EXISTS delete_old_students
ON SCHEDULE EVERY 1 WEEK
DO
  DELETE FROM student_demograpic
  WHERE age > 20;

CREATE TABLE IF NOT EXISTS attendance_log (
    log_id INT AUTO_INCREMENT PRIMARY KEY,
    s_id INT,
    log_date DATE
);

CREATE EVENT IF NOT EXISTS daily_attendance_log
ON SCHEDULE EVERY 1 DAY
DO
  INSERT INTO attendance_log (s_id, log_date)
  SELECT s_id, CURDATE() FROM student_demograpic;

CREATE EVENT IF NOT EXISTS clear_sibling_log
ON SCHEDULE EVERY 1 MONTH
DO
  DELETE FROM sibling_log;

CREATE EVENT IF NOT EXISTS increase_parent_salary
ON SCHEDULE EVERY 1 YEAR
STARTS '2026-01-01 00:00:00'
DO
  UPDATE parent_details
  SET salary = salary * 1.05;

CREATE EVENT IF NOT EXISTS delete_old_guardians
ON SCHEDULE EVERY 1 DAY
DO
  DELETE FROM guardian_details
  WHERE g_age > 80;

CREATE TABLE IF NOT EXISTS student_backup LIKE student_demograpic;

CREATE EVENT IF NOT EXISTS backup_students
ON SCHEDULE EVERY 1 WEEK
STARTS '2025-08-24 00:00:00'
DO
  INSERT INTO student_backup SELECT * FROM student_demograpic;
