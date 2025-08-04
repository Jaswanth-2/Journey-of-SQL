SELECT s_id FROM parent_details
UNION 
SELECT s_id FROM guardian_details;

SELECT s.first_name, s.last_name, p.salary AS income ,'Parent' as relationship
FROM student_demograpic s
JOIN parent_details p ON s.s_id = p.s_id
WHERE p.salary > 60000
UNION
SELECT s.first_name, s.last_name, g.salary AS income ,'Guardian' as relationship
FROM student_demograpic s
JOIN guardian_details g ON s.s_id = g.s_id
WHERE g.salary > 60000;

SELECT occupation ,'Parent' as relationship FROM parent_details 
UNION
SELECT occupation,'Guardian' as relationship FROM guardian_details;

SELECT occupation, COUNT(*) AS total_count
FROM parent_details
GROUP BY occupation
UNION
SELECT occupation, COUNT(*) AS total_count
FROM guardian_details
GROUP BY occupation;

SELECT occupation, COUNT(*) AS total_count
FROM parent_details
GROUP BY occupation
HAVING total_count>1
UNION
SELECT occupation, COUNT(*) AS total_count
FROM guardian_details
GROUP BY occupation
HAVING total_count>1 ;

SELECT relationship, SUM(salary) AS total_salary
FROM (
    SELECT 'Father' AS relationship, salary FROM parent_details
    UNION ALL
    SELECT relationship, salary FROM guardian_details
) AS combined
GROUP BY relationship
HAVING SUM(salary) > 50000;


