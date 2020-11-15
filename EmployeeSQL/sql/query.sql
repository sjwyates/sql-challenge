SELECT
	e.emp_no,
	e.last_name,
	e.first_name,
	e.sex,
	s.salary
FROM employees AS e
JOIN salaries AS s
  ON e.emp_no = s.emp_no;

SELECT
	first_name,
	last_name,
	hire_date
FROM employees
WHERE EXTRACT(YEAR FROM CAST(hire_date AS DATE)) = 1986;

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
	