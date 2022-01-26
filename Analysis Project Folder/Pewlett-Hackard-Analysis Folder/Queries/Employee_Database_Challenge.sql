select * from titles;
select * from retirement_info;
select * from employees;

SELECT employees.emp_no,
       employees.first_name,
	   employees.last_name,
       titles.title,
	   titles.from_date,
	   titles.to_date
--INTO retirement_titles
FROM employees
RIGHT JOIN titles
ON employees.emp_no = titles.emp_no
WHERE (employees.birth_date BETWEEN '1952-01-01' AND '1955-12-31') ;

select * 
from retirement_titles
order by emp_no;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
--INTO unique_titles
FROM retirement_titles
WHERE to_date = '9999-01-01'
ORDER BY emp_no, to_date DESC;

SELECT count(title) FROM unique_titles;
SELECT * FROM unique_titles;
select * 
from retirement_titles

SELECT COUNT(emp_no) as count,title
--INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY count DESC
--Drop table retiring_titles;
select * from retiring_titles;

--======================Diliverable 2=====================================
Select * from employees;
select * from dept_emp;
select * from titles;
SELECT DISTINCT ON (e.emp_no) e.emp_no,
    e.first_name,
    e.last_name,
    e.birth_date,
	de.from_date,
	de.to_date,
	t.title
--INTO mentoship_eligi
FROM employees as e
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND de.to_date = '9999-01-01'
 
select * from mentoship_eligi;


--================================Summery=====================================
select * from mentoship_eligi;

select count(emp_no),title
from mentoship_eligi
group by title;

select count(DISTINCT emp_no)
from mentoship_eligi;
SELECT DISTINCT ON (e.emp_no) e.emp_no,
    e.first_name,
    e.last_name,
    e.birth_date,
	de.from_date,
	de.to_date,
	t.title
--INTO remain_emp
FROM employees as e
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date NOT BETWEEN '1965-01-01' AND '1965-12-31')
AND de.to_date = '9999-01-01'
ORDER BY e.emp_no;

select * from remain_emp;
select count(emp_no),title
from remain_emp
group by title;
