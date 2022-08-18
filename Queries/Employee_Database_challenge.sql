-- Step 1: Retrieve the emp_no, first_name, and last_name columns from the Employees table.
Select emp_no, first_name, last_name
FROM employees;

-- Step 2: Retrieve the title, from_date, and to_date columns from the Titles table.
Select title, from_date, to_date
FROM titles;

-- Step 3-5: create new table , join tables on primary key, filter birth date 1952-1955,
-- order by employee number

-- Select e.emp_no, e.first_name, e.last_name, ti.title, ti.from_date, ti.to_date
-- INTO retirement_titles
-- FROM employees as e
-- INNER JOIN titles as ti on (e.emp_no=ti.emp_no)
-- WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
-- ORDER BY e.emp_no;

-- Starter code below
-- Use Dictinct with Orderby to remove duplicate rows
-- SELECT DISTINCT ON (emp_no) emp_no,
-- first_name,
-- last_name,
-- title
-- INTO unique_titles
-- FROM retirement_titles
-- WHERE to_date = '9999-01-01'
-- ORDER BY emp_no, to_date DESC;


-- Checking unique_titles
--SELECT *
--FROM unique_titles;

--Step 16-19 retrieve # of emp by most recent job title who are about to retire
SELECT COUNT(unique_titles.title), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT(unique_titles.title) DESC;

--Deliverable 1 complete


--Deliverable 2 start
--Step 1 Retrieve the emp_no, first_name, last_name, and birth_date columns from the Employees table.
Select emp_no, first_name, last_name, birth_date
FROM employees;

--Step 2 Retrieve the from_date and to_date columns from the Department Employee table.
Select from_date, to_date
FROM dept_employee;

--Step 3 Retrieve the title column from the Titles table.
Select title
FROM titles;

--Step 4 Use a DISTINCT ON statement to retrieve the first occurrence of the employee number 
--for each set of rows defined by the ON () clause.
-- SELECT DISTINCT ON (ti.emp_no) emp_no, title
-- FROM titles as ti
-- ORDER BY ti.emp_no, to_date DESC;

SELECT distinct on (ti.emp_no) ti.emp_no,
emp.first_name, emp.last_name, emp.birth_date,
demp.from_date, demp.to_date, ti.title
INTO mentorship_eligibility
FROM employees as emp
INNER JOIN dept_employee as demp on (emp.emp_no = demp.emp_no)
INNER JOIN titles as ti on (emp.emp_no = ti.emp_no)
WHERE demp.to_date = '9999-01-01'
and ti.to_date = '9999-01-01'
and (emp.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY ti.emp_no;