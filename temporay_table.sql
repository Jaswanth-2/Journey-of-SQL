
CREATE TEMPORARY TABLE top_oldest_students AS
SELECT s_id, first_name, age
FROM student_demograpic
ORDER BY age DESC
LIMIT 3;

SELECT * FROM top_oldest_students;

CREATE TEMPORARY TABLE student_parent_occupation AS
SELECT sd.s_id, sd.first_name, pd.occupation
FROM student_demograpic sd
JOIN parent_details pd ON sd.s_id = pd.s_id;

SELECT * FROM student_parent_occupation;

CREATE TEMPORARY TABLE above_avg_students AS
SELECT *
FROM student_demograpic
WHERE age > (SELECT AVG(age) FROM student_demograpic);

SELECT * FROM above_avg_students;

CREATE TEMPORARY TABLE all_guardians AS
SELECT occupation, 'Parent' AS relationship FROM parent_details
UNION
SELECT occupation, 'Guardian' FROM guardian_details;

SELECT * FROM all_guardians;
CREATE TEMPORARY TABLE student_age_rank AS
SELECT s_id, first_name, age,
       RANK() OVER (ORDER BY age DESC) AS age_rank
FROM student_demograpic;

SELECT * FROM student_age_rank;

CREATE TEMPORARY TABLE top_2_per_group AS
SELECT *
FROM (
    SELECT s_id, first_name, s_groups, age,
           ROW_NUMBER() OVER (PARTITION BY s_groups ORDER BY age DESC) AS rn
    FROM student_demograpic
) t
WHERE rn <= 2;

SELECT * FROM top_2_per_group;


