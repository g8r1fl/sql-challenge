
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
    salary int,
    PRIMARY KEY (emp_no)
);

ALTER TABLE public.salaries
    OWNER to postgres;

-- create titles table
CREATE TABLE public.titles
(
    title_id serial NOT NULL,
    title text,
    PRIMARY KEY (title_id)
);

ALTER TABLE public.titles
    OWNER to postgres;
	
-- 	create dept_emp table
CREATE TABLE public.dept_emp
(
    emp_no serial NOT NULL,
    dept_no text NOT NULL,
    PRIMARY KEY (dept_no)
);

ALTER TABLE public.dept_emp
    OWNER to postgres;
	
-- 	create dept_manager table
CREATE TABLE public.dept_manager
(
    dept_no text NOT NULL,
    emp_no serial NOT NULL,
    PRIMARY KEY (emp_no)
);

ALTER TABLE public.dept_manager
    OWNER to postgres;
	
-- 	create deptartments table
CREATE TABLE public.deptartments
(
    dept_no text NOT NULL,
    dept_name text NOT NULL,
    PRIMARY KEY (dept_no)
);

ALTER TABLE public.deptartments
    OWNER to postgres;
	
