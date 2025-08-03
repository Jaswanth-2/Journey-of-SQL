# Journey-of-SQL
Journey of SQL” is a 30-day hands-on learning project where I explored the fundamentals and advanced features of SQL (Structured Query Language).  Starting from database creation and table design, I practiced core SQL operations including SELECT, INSERT, UPDATE, DELETE, filtering with WHERE, joining tables, grouping data, and more. 

# database creation
on the students database i have created a table call student demographic and parent details in that students_demographic i have created a colum s_id which refers to student id,first_name,last_name,age,DOB(date of birth) and by using the "ALTER" is have add another column called gender and the second table i have named as parent details in that i have added father name,mothers name,occupation and salary and using s_id as a "PRIMARY KEY"
by using "ALTER" i have added two column name known as f_age refers to fathers age,m_age refers to mothers age and i have inserted values for both the column using "INSERT INTO","VALUES"

# select statement
in this select statement i have selected both the parent details table and the students demographic table and on to that i have particularly selected a seprate colum and i have praticed a PEDMAS in the sql by using AGE as a value in the select statement sql and to find the distinct value i used the DISTINCT function to gent the values for gender it is used to find the unique values and to than i have used for the distinct value in the same time for first_name and gender in that first name was unique value but gender does not show the unique value because in the given select statement was the both for the both it has seprate uniue vale in this case DISTINCT was can't use properly
 
# where statement
in the where statement i have used the function called "WHERE" to select the particular value of the table it can be also used to alter functions i have used "AND OR NOT" logical operator in the AND operator there the both logic should be true in the OR operator one data value can be true but in AND NOT where the data value should be opposite to the data fo (example: gender in that i use AND NOT gender='male' it means the outcome will show the female values ) same for the OR NOT statement

# like statement
in the like statement i have used the "LIKE" statement to be a similar in the like atatement i have used two key words"_,%" in this keyword that _ is used after the value if we put this keyword _ it assumes that after the word there is only one character but this keyword % it thinks there can be many of the keyword we can use both keyword at the same time

# order  by
in the order by we have used asscending order and desending order for the order i have used age of student for order and select the particular student from that

# group by
GROUP BY clause is used to organize rows that have the same values in specified columns into groups. It’s like putting similar items into separate buckets so you can analyze each bucket individually. For example, if you have a table of students and their scores in different subjects, you can use GROUP BY to group the data by each student's name and then calculate things like the total marks or average marks for each student. This is especially useful when you want to perform aggregate operations like SUM(), AVG(), COUNT(), MAX(), or MIN() on grouped data. Essentially, GROUP BY helps you summarize large datasets by categories or groups in a meaningful way.

# inner joints
it is used to combine rows from two or more tables based on a related column between them. It only returns the records where the joined fields from both tables have matching values. If there’s no match, that row is excluded from the result. It helps bring together related information — for example, connecting student details with their parents or guardians. Inner Join is ideal when you only want to work with complete records where all linked data exists.

# left & right joints
In SQL, LEFT JOIN and RIGHT JOIN are used to combine data from two tables based on a related column, but they differ in which table's data is fully preserved. A LEFT JOIN returns all records from the left table and only the matching records from the right table. If there's no match, the right table's fields show up as NULL. This is useful when you want to list everything from the left table regardless of whether related data exists in the right one. On the other hand, a RIGHT JOIN returns all records from the right table and only the matching ones from the left. When there's no match, the left side appears as NULL. This join is helpful when you want to retain every entry from the right table, even if no matching data exists on the left. Essentially, they are mirror images of each other, and your choice depends on which side's data you want to keep fully visible.


