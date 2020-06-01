use employees;

SELECT DISTINCT title FROM titles;

select title, count(*) from titles group by title;

# Find your query for employees whose last names start and end with
# 'E'. Update the query to find just the unique last names that start
# and end with 'E' using GROUP BY.
select last_name, count(last_name) as 'last_name repeats'
from employees
where last_name like 'e%' and last_name like '%e'
group by last_name;

# Update your previous query to now find unique combinations of first and
# last name where the last name starts and ends with 'E'. You should get
# 846 rows.
SELECT first_name, last_name
FROM employees
WHERE last_name like 'e%' and last_name like '%e'
group by first_name, last_name;

# Find the unique last names with a 'q' but not 'qu'.
select last_name from employees
where last_name like '%q%' and last_name not like '%qu%'
group by last_name
order by last_name;

# Add a COUNT() to your results and use ORDER BY to make it easier to find
# employees whose unusual name is shared with others.

# Update your query for 'Irena', 'Vidya', or 'Maya'. Use count(*) and GROUP BY
# to find the number of employees for each gender with those names.
select gender, count(*) as 'M and F repeats'
from employees
where first_name in ('Irena', 'Vidya', 'Maya')
group by gender;

