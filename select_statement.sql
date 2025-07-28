SELECT * FROM school_students.parent_details;


SELECT * FROM school_students.student_demograpic;

SELECT first_name,
last_name,
age,
age+2
FROM school_students.student_demograpic;

#PEDMAS Parentheses, Exponents, Multiplication, Division, Addition, Subtraction
SELECT first_name,
last_name,
age,
(age / 2) + age - 2 + 10 AS PEDMAS
FROM school_students.student_demograpic;

#UNIQUE VALUE 
  
SELECT DISTINCT gender
FROM school_students.student_demograpic; #in hear it only shows uniue values
  

SELECT DISTINCT first_name,gender
FROM school_students.student_demograpic;


