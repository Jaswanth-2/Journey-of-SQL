SELECT first_name, s_groups, age,
RANK() OVER (PARTITION BY s_groups ORDER BY age DESC) AS rank_in_group
FROM student_demograpic;

SELECT first_name, s_groups,
ROW_NUMBER() OVER (PARTITION BY s_groups ORDER BY first_name) AS row_num
FROM student_demograpic;

SELECT s_id, fathers_name, salary,
DENSE_RANK() OVER (ORDER BY salary DESC) AS salary_rank
FROM parent_details;

SELECT s_id, fathers_name, salary,
SUM(salary) OVER (ORDER BY s_id) AS cumulative_salary
FROM parent_details;

SELECT s_id, fathers_name, salary,
LAG(salary) OVER (ORDER BY s_id) AS previous_salary
FROM parent_details;

SELECT s_id, fathers_name, salary,
LEAD(salary) OVER (ORDER BY s_id) AS next_salary
FROM parent_details;

SELECT s.s_id, s.first_name, s.s_groups, p.salary,
round(AVG(p.salary) OVER (PARTITION BY s.s_groups)) AS avg_group_salary
FROM student_demograpic s
JOIN parent_details p ON s.s_id = p.s_id;

SELECT first_name, s_groups, DOB,
FIRST_VALUE(DOB) OVER (PARTITION BY s_groups ORDER BY DOB) AS first_dob
FROM student_demograpic;

SELECT s_id, s_groups,
COUNT(*) OVER (PARTITION BY s_groups) AS total_in_group
FROM student_demograpic;

SELECT s_id, fathers_name, salary,
MAX(salary) OVER () - salary AS salary_diff
FROM parent_details;













