CREATE DATABASE `school_students`;
USE `school_students`;

CREATE TABLE student_demograpic(
s_id INT NOT NULL ,
first_Name VARCHAR(50) ,
last_Name VARCHAR(50) ,
age int ,
DOB DATE ,
s_groups VARCHAR(50),
PRIMARY KEY (s_id) 
);

CREATE TABLE parent_details(
s_id int not null ,
fathers_name VARCHAR(50) NOT NULL,
mothers_name VARCHAR(50) NOT NULL,
occupation VARCHAR(50),
salary INT );

ALTER TABLE parent_details
ADD COLUMN f_age INT,
ADD COLUMN M_age INT;


ALTER TABLE student_demograpic
ADD COLUMN gender VARCHAR(50);


INSERT INTO student_demograpic (s_id, first_Name, last_Name, age, DOB,gender, s_groups)
VALUES
(1, 'Abishek', 'Sharma', 15, '2010-04-12','male', 'Science'),
(2, 'Ishan', 'kishan', 14, '2011-09-21','male', 'Commerce'),
(3, 'smrithi', 'Mandhana', 16, '2009-06-03','female', 'Arts'),
(4, 'Sneha', 'Patel', 15, '2010-11-18','male', 'Science'),
(5, 'priyanka', 'mohan', 14, '2011-01-25','female', 'Commerce');

INSERT INTO parent_details (s_id, fathers_name, mothers_name,occupation, salary,f_age,m_age)
VALUES
(1, 'Rajesh Sharma', 'Sunita Sharma', 'Engineer', 60000,42,39),
(2, 'Amit kishan', 'malak kishan', 'Teacher', 45000,53,47),
(3, 'Suresh shetri', 'mandhana', 'Businessman', 75000,55,60),
(4, 'Manoj Patel', 'Rekha Patel', 'Doctor', 90000,60,55),
(5, 'mohan', 'Pooja mohan', 'Accountant', 50000,30,38);


 
 
 
