-- Create employees table 
SELECT	
	emp_no,
	first_name,
	last_name
FROM
	employees;

-- Create titles table
SELECT
	title,
	from_date,
	to_date
FROM
	titles;
	
-- Joined table
SELECT	
	e.emp_no,
	e.first_name,
	e.last_name,
	ti.title,
	ti.from_date,
	ti.to_date
INTO
	retirement_titles
FROM
	employees as e
INNER JOIN
	titles ti on ti.emp_no = e.emp_no
WHERE
	(birth_date BETWEEN '1952-01-01' AND '1955-12-31');
	
	
-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title

INTO unique_titles
FROM retirement_titles
WHERE to_date = '9999-01-01'
ORDER BY emp_no, to_date DESC;

-- Number of retiring employees by job title
SELECT 
	COUNT(emp_no), title
INTO
	retiring_titles
FROM
	unique_titles
GROUP BY
	title
ORDER BY
	COUNT(emp_no) DESC;


-- Create mentorship eligibilty table
SELECT	
	DISTINCT ON (e.emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	ti.title
INTO
	mentorship_eligibility
FROM
	employees as e
INNER JOIN
	dept_emp as de on de.emp_no = e.emp_no
INNER JOIN
	titles as ti on ti.emp_no = e.emp_no
WHERE
	(e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
	and (de.to_date = '9999-01-01')
ORDER BY
	e.emp_no;
