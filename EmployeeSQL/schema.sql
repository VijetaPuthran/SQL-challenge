CREATE TABLE departments(
    dept_no varchar(50) PRIMARY KEY NOT NULL,
    dept_name varchar(50)   NOT NULL
);  

CREATE TABLE titles (
    title_id varchar(50) PRIMARY KEY NOT NULL,
    title varchar(50) NOT NULL
);

CREATE TABLE employees (
    emp_no int PRIMARY KEY NOT NULL,
	emp_title_id varchar(50) NOT NULL,
    FOREIGN KEY (emp_title_id) REFERENCES titles(title_id),
    birth_date varchar(50) NOT NULL,
    first_name varchar(50) NOT NULL,
    last_name varchar(50) NOT NULL,
    sex varchar(50) NOT NULL,
    hire_date varchar(50) NOT NULL
);

CREATE TABLE dept_emp(
	emp_no int NOT NULL,
	FOREIGN KEY (emp_no)REFERENCES employees(emp_no), 
	dept_no varchar(50) NOT NULL,
	FOREIGN KEY (dept_no)REFERENCES departments(dept_no),
	PRIMARY KEY (emp_no,dept_no)
);

CREATE TABLE dept_manager(
	dept_no varchar(50) NOT NULL,
	FOREIGN KEY (dept_no)REFERENCES departments(dept_no),
	emp_no int NOT NULL,
	FOREIGN KEY (emp_no)REFERENCES employees(emp_no),
    PRIMARY KEY (dept_no,emp_no)
);

CREATE TABLE salaries(
    emp_no INT NOT NULL,
	FOREIGN KEY (emp_no)REFERENCES employees(emp_no),
    salary INT NOT NULL
);

select * from departments;
select * from dept_emp;
select * from dept_manager;
select * from employees;
select * from salaries;
select * from titles;


