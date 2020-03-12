DROP TABLE IF EXISTS department;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;

CREATE TABLE employees(
	emp_no int NOT NULL,
	birth_date varchar NOT NULL,
	first_name varchar NOT NULL,
	last_name varchar NOT NULL,
	gender varchar NOT NULL,
	hire_date date NOT NULL,
		PRIMARY KEY (emp_no)
--SELECT * FROM employees

);

CREATE TABLE department(
	dept_no varchar   NOT NULL,
    dept_name varchar   NOT NULL,
		PRIMARY KEY (dept_no)
--SELECT * FROM department  
);

CREATE TABLE dept_emp(
	emp_no int NOT NULL,
	dept_no varchar NOT NULL,
	from_date date NOT NULL,
	to_date date NOT NULL,
		FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
		FOREIGN KEY (dept_no) REFERENCES department(dept_no)
	
--SELECT * FROM dept_emp

);

CREATE TABLE dept_manager(
	dept_no varchar NOT NULL,
	emp_no int NOT NULL,
	from_date date NOT NULL,
	to_date date NOT NULL,
		FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
		FOREIGN KEY (dept_no) REFERENCES department(dept_no)
	
--SELECT * FROM dept_manager
);

CREATE TABLE salaries(
	emp_no int NOT NULL,
	salary int NOT NULL,
	from_date date NOT NULL,
	to_date date NOT NULL,
		FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
--SELECT * FROM salaries
	
);

CREATE TABLE titles(
	emp_no int NOT NULL,
	title varchar NOT NULL,
	from_date date NOT NULL,
	to_date date NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)

--SELECT * FROM titles
);
