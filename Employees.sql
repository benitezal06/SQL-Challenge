--List the following details of each employee: 
--employee number, last name, first name, gender, and salary.
SELECT employees.first_name, employees.last_name, employees.gender, salaries.salary
FROM employees
INNER JOIN salaries ON
employees.emp_no=salaries.emp_no;

--List employees who were hired in 1986.
SELECT emp_no,first_name,last_name,hire_date
FROM employees
WHERE hire_date >='1985-12-31'
AND hire_date <='1987-01-01';

--List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
SELECT dept_manager.dept_no, department.dept_name, dept_manager.emp_no, employees.first_name, employees.last_name,
dept_manager.from_date, dept_manager.to_date
FROM dept_manager
INNER JOIN department ON
dept_manager.dept_no=department.dept_no
INNER JOIN employees ON
dept_manager.emp_no = employees.emp_no


--List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT employees.emp_no, employees.last_name, employees.first_name, department.dept_name
FROM employees
INNER JOIN dept_emp ON
employees.emp_no= dept_emp.emp_no
INNER JOIN department ON
dept_emp.dept_no=department.dept_no;

--List all employees whose first name is "Hercules" and last names begin with "B."

SELECT *
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

--List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT employees.emp_no, employees.last_name, employees.first_name, department.dept_name
FROM employees
JOIN dept_emp ON
employees.emp_no=dept_emp.emp_no
INNER JOIN department ON
dept_emp.dept_no=department.dept_no
WHERE dept_name = 'Sales';

--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT employees.emp_no, employees.last_name, employees.first_name, department.dept_name
FROM employees
JOIN dept_emp ON
employees.emp_no=dept_emp.emp_no
INNER JOIN department ON
dept_emp.dept_no=department.dept_no
WHERE dept_name = 'Sales'
OR dept_name = 'Development';


--In descending order, list the frequency count of employee last names,
--i.e., how many employees share each last name.

SELECT last_name, COUNT (last_name)
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name)DESC;
