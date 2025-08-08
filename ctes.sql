SELECT * FROM school_students.student_demograpic;

WITH avg_age_cte AS (
    SELECT AVG(age) AS avg_age
    FROM student_demograpic
)
SELECT s_id, first_name, s_groups, age
FROM student_demograpic;


WITH ranked_students AS (
    SELECT s_id, first_name, s_groups, age,
           ROW_NUMBER() OVER (PARTITION BY s_groups ORDER BY age DESC) AS rank_in_group
    FROM student_demograpic
)
SELECT *
FROM ranked_students
WHERE rank_in_group <= 3;


WITH ranked_students AS (
    SELECT s_id, first_name, s_groups, age,
           ROW_NUMBER() OVER (PARTITION BY s_groups ORDER BY age DESC) AS rank_in_group
    FROM student_demograpic
)
SELECT *
FROM ranked_students
WHERE rank_in_group <= 3;

WITH both_cte AS (
    SELECT s.s_id, s.first_name
    FROM student_demograpic s
    JOIN parent_details p ON s.s_id = p.s_id
    JOIN guardian_details g ON s.s_id = g.s_id
)
SELECT * FROM both_cte;

