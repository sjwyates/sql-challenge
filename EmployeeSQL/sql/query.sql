-- query 1
SELECT
	e.emp_no,
	e.last_name,
	e.first_name,
	e.sex,
	s.salary
FROM employees AS e
JOIN salaries AS s
  ON e.emp_no = s.emp_no;

-- query 2
SELECT
	first_name,
	last_name,
	hire_date
FROM employees
WHERE EXTRACT(YEAR FROM CAST(hire_date AS DATE)) = 1986;

-- query 3
SELECT
	d.dept_no,
	d.dept_name,
	e.emp_no,
	e.first_name,
	e.last_name
FROM departments AS d
JOIN dept_manager AS dm
  ON d.dept_no = dm.dept_no
JOIN employees AS e
  ON dm.emp_no = e.emp_no;

-- query 4
SELECT
	e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
FROM employees AS e
JOIN dept_emp AS de
  ON e.emp_no = de.emp_no
JOIN departments AS d
  ON de.dept_no = d.dept_no;
  
-- query 5
SELECT
	first_name,
	last_name,
	sex
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';