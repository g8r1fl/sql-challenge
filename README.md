# sql-challenge

# Creating Tables

My first challenge came after creating all the tables when I forgot to create Primary and Foreign keys.  The ERD I created was wrong regarding the relationships to other tables.

![sql_schema.png](sql_schema.png)

Once I figured out the correct ERD I started to create tables again but didn't take into consideration the order of creation so I had errors.  After creating them in the correct order I had an error with my last table dept_emp because there was no unique value to assign as a PK so I created a composite key.

# Questions

1. List the following details of each employee: employee number, last name, first name, sex, and salary.

![question 1](/Users/Howard/Desktop/SQL_HW_Question_1.png)

2. List first name, last name, and hire date for employees who were hired in 1986

![SQL_HW_Question_7](/Users/Howard/Desktop/SQL_HW_Question_2.png)

3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

![SQL_HW_Question_7](/Users/Howard/Desktop/SQL_HW_Question_3.png)

4. List the department of each employee with the following information: employee number, last name, first name, and department name.

![SQL_HW_Question_7](/Users/Howard/Desktop/SQL_HW_Question_4.png)

5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

![SQL_HW_Question_7](/Users/Howard/Desktop/SQL_HW_Question_5.png)

6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

![SQL_HW_Question_7](/Users/Howard/Desktop/SQL_HW_Question_6.png)

7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

![SQL_HW_Question_7](/Users/Howard/Desktop/SQL_HW_Question_7.png)

8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

![SQL_HW_Question_7](/Users/Howard/Desktop/SQL_HW_Question_8.png)