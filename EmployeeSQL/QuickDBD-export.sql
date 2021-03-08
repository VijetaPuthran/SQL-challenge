-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "departments" (
    "dept_no" int   NOT NULL,
    "dept_name" varchar(50)   NOT NULL,
    CONSTRAINT "pk_departments" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "titles" (
    "title_id" int   NOT NULL,
    "title" varchar(50   NOT NULL,
    CONSTRAINT "pk_titles" PRIMARY KEY (
        "title_id"
     )
);

CREATE TABLE "employees" (
    "emp_no" int   NOT NULL,
    "emp_title_id" titles.title_id   NOT NULL,
    "birth_date" varchar(50)   NOT NULL,
    "first_name" varchar(50)   NOT NULL,
    "last_name" varchar(50)   NOT NULL,
    "sex" varchar(50)   NOT NULL,
    "hire_date" varchar(50)   NOT NULL,
    CONSTRAINT "pk_employees" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "dept_emp" (
    "emp_no" -employees.emp_no   NOT NULL,
    "dept_no" -departments.dept_no   NOT NULL,
    "(emp_no,dept_no)" int   NOT NULL,
    CONSTRAINT "pk_dept_emp" PRIMARY KEY (
        "(emp_no,dept_no)"
     )
);

CREATE TABLE "dept_manager" (
    "dept_no" -departments.dept_no   NOT NULL,
    "emp_no" -employees.emp_no   NOT NULL,
    "(dept_no,emp_no)" int   NOT NULL,
    CONSTRAINT "pk_dept_manager" PRIMARY KEY (
        "(dept_no,emp_no)"
     )
);

CREATE TABLE "salaries" (
    "emp_no" -employees.emp_no   NOT NULL,
    "salary" varchar(50)   NOT NULL
);

