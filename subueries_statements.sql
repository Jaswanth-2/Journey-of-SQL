SELECT first_name, age
FROM student_demograpic
WHERE age = (
  SELECT age FROM student_demograpic WHERE first_name = 'Ishan'
);

SELECT s.first_name, p.salary
FROM student_demograpic s
JOIN parent_details p ON s.s_id = p.s_id
WHERE p.salary > (
  SELECT AVG(salary) FROM parent_details
);

SELECT first_name, age
FROM student_demograpic
WHERE age = (
  SELECT MAX(age) FROM student_demograpic
);

SELECT first_name
FROM student_demograpic
WHERE s_id IN (
  SELECT DISTINCT s_id FROM sibling_details
);

SELECT s.first_name, p.f_age
FROM student_demograpic s
JOIN parent_details p ON s.s_id = p.s_id
WHERE p.f_age > ALL (
  SELECT g_age FROM guardian_details
);

SELECT guardian_name, salary
FROM guardian_details
WHERE salary > (
  SELECT MAX(salary) FROM parent_details
);

SELECT s.first_name
FROM student_demograpic s
JOIN parent_details p ON s.s_id = p.s_id
WHERE p.occupation = (
  SELECT g.occupation FROM guardian_details g WHERE g.s_id = s.s_id
);

SELECT s.first_name, p.salary
FROM student_demograpic s
JOIN parent_details p ON s.s_id = p.s_id
WHERE p.salary > (
  SELECT AVG(salary) FROM guardian_details
);

SELECT first_name
FROM student_demograpic
WHERE s_id NOT IN (
  SELECT s_id FROM guardian_details
);

SELECT MAX(salary) AS second_highest
FROM parent_details
WHERE salary < (
  SELECT MAX(salary) FROM parent_details
);







