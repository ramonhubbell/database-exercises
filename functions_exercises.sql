use employees;

# Modify your first query to order by first name. The first result
# should be Irena Reutenauer and the last result should be Vidya Simmen.
# SELECT column FROM table ORDER BY column_name [ASC|DESC];
select * from employees
where first_name in ('Irena', 'Vidya', 'Maya')
order by first_name;

select * from employees
where first_name in ('Irena', 'Vidya', 'Maya')
order by first_name desc;

# Update the query to order by first name and then last name. The first
# result should now be Irena Acton and the last should be Vidya Zweizig.
select * from employees
where first_name in ('Irena', 'Vidya', 'Maya')
order by first_name ASC, last_name asc;

select * from employees
where first_name in ('Irena', 'Vidya', 'Maya')
order by first_name desc, last_name desc;

# Change the order by clause so that you order by last name before first
# name. Your first result should still be Irena Acton but now the last result
# should be Maya Zyda.
select * from employees
where first_name in ('Irena', 'Vidya', 'Maya')
order by last_name asc, first_name asc;

select * from employees
where first_name in ('Irena', 'Vidya', 'Maya')
order by last_name desc, first_name desc;

# Update your queries for employees with 'E' in their last name to sort the
# results by their employee number. Your results should not change!

# Update your queries for employees whose names start and end with 'E'.
# Use concat() to combine their first and last name together as a single
# column in your results.

select emp_no, birth_date, concat(first_name, ' ', last_name), gender, hire_date
from employees
where last_name like 'E%' or last_name like '%E'
order by emp_no;

# Now reverse the sort order for both queries.
select concat(first_name, ' ', last_name)
from employees
where last_name like 'E%' or last_name like '%E'
order by emp_no desc;

# Find all employees whose last name starts with 'E' — 7,330 rows.
select concat( first_name, ' ' , last_name ) as fullname
from employees
where last_name like 'E%' and last_name like '%E'
order by emp_no
;

select concat(first_name, ' ' , last_name) as fullname
from employees
where last_name like 'e%' and last_name like '%e'
order by emp_no desc;

# Change the query for employees hired in the 90s and born on Christmas
# such that the first result is the oldest employee who was hired last.
# It should be Khun Bernini.

# For your query of employees born on Christmas and hired in the 90s,
# use datediff() to find how many days they have been working at the
# company (Hint: You will also need to use now() or curdate())
# SELECT DATEDIFF('2007-12-31 23:59:59','2007-12-30');
# -> 1
select *, datediff( curdate(), hire_date) as 'days worked'
from employees where hire_date like '199%' and birth_date like '%-12-25'
order by birth_date, hire_date desc;

