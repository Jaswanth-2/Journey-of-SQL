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

# self joins
A SELF JOIN is a type of SQL join where a table is joined with itself. This is useful when you want to compare rows within the same table. To make this work, you use table aliases to treat the same table as if it were two separate ones. For example, in a student table, you might want to find pairs of students who share the same age or group. A SELF JOIN helps you match each row with other rows from the same table based on certain conditions. It’s commonly used for hierarchical data (like students and their patners) or for finding similarities or relationships within one dataset.

# union
The union operator in SQL is used to combine the results of two or more select statements into a single result set. It removes duplicate rows and returns only unique records. Each select must have the same number of columns, in the same order, and with compatible data types. Union is helpful when merging data from different tables or sources that have a similar structure. If you want to include duplicates too, you can use union all instead.

# case statement
The case statement in SQL is used to apply conditional logic directly within queries, similar to if-else statements in programming languages. It helps in evaluating conditions and returning different values based on those conditions. This is useful for classifying data, creating custom labels, or performing conditional calculations without modifying the original data in the database. In the examples we used, we applied the case statement to categorize students by age into child, teen, or adult groups. We also grouped student streams like science, commerce, and arts into categories such as core, business, and creative. Additionally, we converted gender into simple labels like M or F, determined eligibility for scholarships based on age, and classified parent or guardian salaries as low, medium, or high. We also showed who is responsible for the student (parent, guardian, or both) and whether the sibling is studying or not using yes or no. These examples show how powerful and flexible the case statement is for making data more meaningful in query results.

# subqueries
In the given set of SQL subquery questions, we explored how to extract meaningful insights from the school_students database using nested logic. First, we matched students who share the same age as Ishan by comparing against a subquery that fetched his age. We then filtered students whose parents earn above the average parent salary, and also identified the oldest students by comparing each age to the maximum. To find students with siblings, we checked if their IDs appeared in the sibling table. Some subqueries compared parent and guardian attributes—for example, finding students whose fathers are older than all guardians or whose parents earn more than any guardian. We also checked if a student's parent and guardian had the same occupation using a correlated subquery. Another query compared parent salary to the average guardian salary, while one identified students without guardians by checking IDs not present in the guardian table. Finally, we found the second-highest parent salary by excluding the max and selecting the next best. These questions demonstrate how subqueries can dynamically adapt conditions and enhance filtering, comparison, and data relationships

# ctes


# windows function
Window functions perform calculations across a set of table rows that are somehow related to the current row. Unlike GROUP BY, they don't reduce the number of rows they just add an extra column showing something like rank, running total, average in group, or comparisons to other rows.


