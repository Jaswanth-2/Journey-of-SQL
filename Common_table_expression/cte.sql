-- table creating

CREATE TABLE Employees (
    emp_id INT,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT
);

CREATE TABLE Departments (
    department VARCHAR(50),
    location VARCHAR(50)
);

-- value insertion

INSERT INTO Employees (emp_id, name, department, salary)
VALUES
(1, 'Arun', 'IT', 60000),
(2, 'Bala', 'HR', 45000),
(3, 'Kumar', 'IT', 80000),
(4, 'Ravi', 'Sales', 55000),
(5, 'Siva', 'HR', 70000);

INSERT INTO Departments (department, location)
VALUES
('IT', 'Chennai'),
('HR', 'Bangalore'),
('Sales', 'Coimbatore');


--cte

WITH ranked_salary AS(
  SELECT 
	e.name,
	e.department, 
	d.location,
	e.salary,
	RANK() OVER(PARTITION BY e.department ORDER BY e.salary DESC ) AS 'RANK'
	FROM Employees e
	LEFT JOIN Departments d
	ON e.department=d.department
)
SELECT name,department,location,salary
FROM ranked_salary
WHERE RANK=1;
		




