SELECT e.emp_no, e.first_name, e.last_name, e.sex, s.salary
From employees e
Join salaries s
ON (e.emp_no = s.emp_no);