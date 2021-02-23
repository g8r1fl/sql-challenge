-- List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
From employees e
Join salaries s
ON (e.emp_no = s.emp_no)

-- List first name, last name, and hire date for employees who were hired in 1986.
SELECT e.first_name, e.last_name, e.hire_date
FROM employees e
WHERE hire_date >= '1986-1-1'
AND hire_date < '1987-1-1'

-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

-- List the department of each employee with the following information: employee number, last name, first name, and department name.

-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

-- List all employees in the Sales department, including their employee number, last name, first name, and department name.

-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.