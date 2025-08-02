SELECT * FROM school_students.student_demograpic;

SELECT* FROM school_students.parent_details;

SELECT occupation,AVG(salary)
FROM school_students.parent_details
WHERE salary >45000
GROUP BY occupation
HAVING AVG(salary)>60000;

SELECT occupation,AVG(salary) AS average_salary , round(AVG(f_age)) AS fathers_age , round(AVG(m_age)) AS mothers_age
FROM school_students.parent_details 
WHERE f_age>40 AND m_age>30
group by occupation
HAVING AVG(salary)>40  
;

SELECT occupation,AVG(salary) AS average_salary , round(AVG(f_age)) AS fathers_age , round(AVG(m_age)) AS mothers_age
FROM school_students.parent_details 
WHERE f_age>40 OR m_age>30
group by occupation
HAVING AVG(salary)>40  
;



