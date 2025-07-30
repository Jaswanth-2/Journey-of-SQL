#like statement (_,%)

# %
SELECT * FROM school_students.student_demograpic
WHERE first_name LIKE 'Abi%';

# _
SELECT * FROM school_students.student_demograpic
WHERE first_name LIKE 'Abi__' AND age=15; 
#it will show null value because in like statement _ it means there is only one character so it shows null value because after Abi i put only one _
# but in this % it can be many character after that

# _,%
SELECT * FROM school_students.student_demograpic
WHERE first_name LIKE 'Abi__%' AND age=15;