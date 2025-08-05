SELECT first_name, age,
  CASE
    WHEN age <=13 Then 'primary'
    WHEN age <= 14 THEN 'Secondary'
    WHEN age BETWEEN 15 AND 17 THEN 'Higher secondary'
    ELSE 'UG'
  END AS Standards
FROM student_demograpic;

SELECT first_name, s_groups,
  CASE
    WHEN s_groups = 'Science' THEN 'Core'
    WHEN s_groups = 'Commerce' THEN 'Business'
    WHEN s_groups = 'Arts' THEN 'Creative'
    ELSE 'Other'
  END AS stream_type
FROM student_demograpic;

SELECT first_name, gender,
  CASE
    WHEN gender = 'male' THEN 'M'
    WHEN gender = 'female' THEN 'F'
    ELSE 'U'
  END AS gender_code
FROM student_demograpic;

SELECT first_name, age,
  CASE
    WHEN age > 15 THEN 'Eligible'
    ELSE 'Not Eligible'
  END AS scholarship_status
FROM student_demograpic;

SELECT fathers_name, salary,
  CASE
    WHEN salary < 50000 THEN 'Low'
    WHEN salary BETWEEN 50000 AND 70000 THEN 'Medium'
    ELSE 'High'
  END AS salary_level
FROM parent_details;

SELECT fathers_name, f_age,
  CASE
    WHEN f_age > 50 THEN 'Senior'
    ELSE 'Junior'
  END AS age_status
FROM parent_details;

SELECT guardian_name, relationship,
  CASE
    WHEN relationship IN ('Father', 'Mother', 'Brother', 'Sister') THEN 'Immediate'
    ELSE 'Extended'
  END AS relation_type
FROM guardian_details;

SELECT s.first_name,
  CASE
    WHEN p.s_id IS NOT NULL AND g.s_id IS NOT NULL THEN 'Both'
    WHEN p.s_id IS NOT NULL THEN 'Parent'
    WHEN g.s_id IS NOT NULL THEN 'Guardian'
    ELSE 'None'
  END AS care_by
FROM student_demograpic s
LEFT JOIN parent_details p ON s.s_id = p.s_id
LEFT JOIN guardian_details g ON s.s_id = g.s_id;

SELECT first_name, age,
  CASE
    WHEN age = (SELECT MAX(age) FROM student_demograpic) THEN 'Topper'
    WHEN age = (SELECT MIN(age) FROM student_demograpic) THEN 'Youngest'
    ELSE 'Average'
  END AS age_rank
FROM student_demograpic;








