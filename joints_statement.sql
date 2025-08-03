SELECT * FROM school_students.student_demograpic;
SELECT * FROM school_students.sibling_details;
SELECT * FROM school_students.parent_details;
SELECT * FROM school_students.guardian_details;

#left join

select concat(s.first_name,' ',s.last_name) as student_name , p.fathers_name 
from student_demograpic as s
left join parent_details as p
 on s.s_id=p.s_id;
 
select concat(s.first_name,' ',s.last_name) as student_name , g.guardian_name 
from student_demograpic as s
left join guardian_details as g
 on s.s_id=g.s_id;
 
 select concat(s.first_name,' ',s.last_name) as student_name , si.sibling_name 
from student_demograpic as s
left join sibling_details as si
 on s.s_id=si.s_id;
 
 select concat(s.first_name,' ',s.last_name) as student_name , p.occupation
from student_demograpic as s
left join parent_details as p
 on s.s_id=p.s_id;
 
 select concat(s.first_name,' ',s.last_name) as student_name , g.contact_number 
from student_demograpic as s
left join guardian_details as g
 on s.s_id=g.s_id;
 
 #right join
 
select concat(s.first_name,' ',s.last_name) as student_name , g.guardian_name 
from student_demograpic as s
right join guardian_details as g
on s.s_id=g.s_id;
 
 select s_groups, p.salary
from student_demograpic as s
right join parent_details as p
 on s.s_id=p.s_id;
 
 #self joints
 SELECT 
  s1.first_name AS student1,
  s2.first_name AS student2,
  s1.s_groups
FROM student_demograpic s1
JOIN student_demograpic s2 
  ON s1.s_groups = s2.s_groups AND s1.s_id < s2.s_id;

SELECT 
  s1.first_name AS student1,
  s2.first_name AS student2,
  s1.age
FROM student_demograpic s1
JOIN student_demograpic s2 
  ON s1.age = s2.age AND s1.s_id < s2.s_id;

 SELECT 
  s1.first_name AS student1,
  s2.first_name AS student2,
  s1.last_name
FROM student_demograpic s1
JOIN student_demograpic s2 
  ON s1.last_name = s2.last_name AND s1.s_id < s2.s_id;
  
SELECT 
  s1.first_name AS student1,
  s2.first_name AS student2,
  MONTH(s1.DOB) AS birth_month
FROM student_demograpic s1
JOIN student_demograpic s2 
  ON MONTH(s1.DOB) = MONTH(s2.DOB) AND s1.s_id < s2.s_id;

SELECT 
  s1.first_name AS older_student,
  s2.first_name AS younger_student,
  s1.age AS older_age,
  s2.age AS younger_age
FROM student_demograpic s1
JOIN student_demograpic s2 
  ON s1.age > s2.age;

 
 