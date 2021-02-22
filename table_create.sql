DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_mananger;
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;

-- create employees table
CREATE TABLE public.employees
(
    emp_no serial NOT NULL,
    emp_title_id VARCHAR NOT NULL,
	birth_date date NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex text NOT NULL,
	hire_date date NOT NULL,
    PRIMARY KEY (emp_no)
);

ALTER TABLE public.employees
    OWNER to postgres;
	
-- ALTER TABLE public.employees
--     ADD CONSTRAINT employees_fkey FOREIGN KEY (emp_no)
--     REFERENCES public.titles (title_id)
--     ON UPDATE CASCADE
--     ON DELETE CASCADE
--     NOT VALID;


-- create salaries table
CREATE TABLE public.salaries
(
    emp_no serial NOT NULL,
    emp_title VARCHAR NOT NULL,
    PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_no) REFERENCES employees.emp_no
);

ALTER TABLE public.salaries
    OWNER to postgres;

-- create titles table
CREATE TABLE public.titles
(
    title_id VARCHAR NOT NULL,
    title VARCHAR NOT NULL,
    PRIMARY KEY (title_id),
	FOREIGN KEY (title_id) REFERENCE employees.employee_title_id	
);

ALTER TABLE public.titles
    OWNER to postgres;
	
-- 	create dept_emp table
CREATE TABLE public.dept_emp
(
    emp_no serial NOT NULL,
    dept_no text NOT NULL,
    PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_no) REFERENCES employees.emp_no
);

ALTER TABLE public.dept_emp
    OWNER to postgres;
	
-- 	create dept_manager table
CREATE TABLE public.dept_manager
(
    dept_no text NOT NULL,
    emp_no serial NOT NULL,
    PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_no) REFERENCES employees.emp_no
);

ALTER TABLE public.dept_manager
    OWNER to postgres;
	
-- 	create deptartments table
CREATE TABLE public.deptartments
(
    dept_no text NOT NULL,
    dept_name text NOT NULL,
    PRIMARY KEY (dept_no),
	FOREIGN KEY (dept_no) REFERENCES dept_emp.dept_no
);

ALTER TABLE public.deptartments
    OWNER to postgres;
	
