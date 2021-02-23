-- DROP TABLE IF EXISTS employees;
-- DROP TABLE IF EXISTS dept_emp;
-- DROP TABLE IF EXISTS dept_mananger;
-- DROP TABLE IF EXISTS departments;
-- DROP TABLE IF EXISTS salaries;
-- DROP TABLE IF EXISTS titles;

-- DROP TABLE employees CASCADE;
-- DROP TABLE dept_emp CASCADE;
-- DROP TABLE dept_mananger CASCADE;
-- DROP TABLE departments CASCADE;
-- DROP TABLE salaries CASCADE;
-- DROP TABLE titles CASCADE;

-- create titles table
CREATE TABLE public.titles
(
    title_id VARCHAR NOT NULL,
    title VARCHAR NOT NULL,
    PRIMARY KEY (title_id)
);

ALTER TABLE public.titles
    OWNER to postgres;

-- 	create deptartments table
CREATE TABLE public.departments
(
    dept_no text NOT NULL,
    dept_name text NOT NULL,
    PRIMARY KEY (dept_no)
);

ALTER TABLE public.departments
    OWNER to postgres;

-- create employees table
CREATE TABLE public.employees
(
    emp_no int NOT NULL,
    emp_title_id VARCHAR NOT NULL,
	birth_date date NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex text NOT NULL,
	hire_date date NOT NULL,
    PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

ALTER TABLE public.employees
    OWNER to postgres;


-- create salaries table
CREATE TABLE public.salaries
(
    emp_no serial NOT NULL,
    salary money NOT NULL,
    PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

ALTER TABLE public.salaries
    OWNER to postgres;


-- 	create dept_emp table
CREATE TABLE public.dept_emp
(
    emp_no serial NOT NULL,
    dept_no text NOT NULL,
    PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

ALTER TABLE public.dept_emp
    OWNER to postgres;
	
-- 	create dept_manager table
CREATE TABLE public.dept_manager
(
    dept_no text NOT NULL,
    emp_no serial NOT NULL,
    PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
 	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

ALTER TABLE public.dept_manager
    OWNER to postgres;

	
-- import data to employee table
COPY employees
FROM '/Users/Howard/Documents/GIT/homework/sql-challenge/EmployeeSQL/employees.csv'
DELIMITER ',' CSV HEADER;

-- import data to salaries table
COPY salaries
FROM '/Users/Howard/Documents/GIT/homework/sql-challenge/EmployeeSQL/salaries.csv'
DELIMITER ',' CSV HEADER;
	
SELECT * FROM employees;
SELECT * FROM salaries;