-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
JOIN salaries s
ON (e.emp_no = s.emp_no)

-- 2. List first name, last name, and hire date for employees who were hired in 1986.
SELECT e.first_name, e.last_name, e.hire_date
FROM employees e
WHERE hire_date >= '1986-1-1'
AND hire_date < '1987-1-1'

-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT dp.dept_no, dp.dept_name, dm.emp_no AS manager_emp_no, e.last_name, e.first_name
FROM departments dp
JOIN dept_manager dm
ON (dp.dept_no = dm.dept_no)
JOIN employees e
ON (e.emp_no = dm.emp_no)


-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, dp.dept_name
FROM employees e
JOIN dept_emp de
ON (e.emp_no = de.emp_no)
JOIN departments dp
ON (dp.dept_no = de.dept_no)

-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT e.first_name, e.last_name, e.sex
FROM employees e
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%'

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, dp.dept_name
FROM employees e
JOIN dept_emp de
ON (e.emp_no = de.emp_no)
JOIN departments dp
ON (dp.dept_no = de.dept_no)
WHERE dept_name = 'Sales'

-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, dp.dept_name
FROM employees e
JOIN dept_emp de
ON (e.emp_no = de.emp_no)
JOIN departments dp
ON (dp.dept_no = de.dept_no)
WHERE dept_name = 'Sales'
OR dept_name = 'Development'


-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;

SELECT emp_no, first_name, last_name
FROM employees
WHERE emp_no = 499942
