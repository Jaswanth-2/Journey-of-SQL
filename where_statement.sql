SELECT * FROM school_students.student_demograpic
WHERE first_Name='Abishek';

SELECT* FROM school_students.parent_details;

SELECT* FROM school_students.parent_details
WHERE  salary>=50000;

SELECT* FROM school_students.parent_details
WHERE  salary<=50000;

SELECT* FROM school_students.student_demograpic
WHERE  gender !='female';

SELECT* FROM school_students.student_demograpic
WHERE  gender !='male';

#AND OR NOT LOGICAL OPERATOR

#AND
SELECT* FROM school_students.student_demograpic
WHERE  gender !='male'
AND age>15;

#OR
SELECT* FROM school_students.student_demograpic
WHERE  gender !='male'
OR age>15;

#OR NOT
SELECT* FROM school_students.student_demograpic
WHERE DOB >='2009-06-03' 
OR NOT gender= 'male';

#AND NOT
SELECT* FROM school_students.student_demograpic
WHERE DOB >='2009-06-03' 
AND NOT gender= 'male';

