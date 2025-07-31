SELECT gender
FROM school_students.student_demograpic
GROUP BY gender;

SELECT gender,AVG(age)
FROM school_students.student_demograpic
GROUP BY gender;

#to avoid decimals
SELECT gender,floor(AVG(age)) AS average_age
FROM school_students.student_demograpic
GROUP BY gender;


SELECT gender,floor(AVG(age)) AS average_age, MAX(age) AS max_age, MIN(age) AS min_age,count(age)
FROM school_students.student_demograpic
GROUP BY gender;

parent_details