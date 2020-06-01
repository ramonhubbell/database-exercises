use employees;

# Find all employees with first names 'Irena',
# 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).
select emp_no, first_name, last_name from employees
where first_name in ('Irena', 'Vidya', 'Maya');

# Find all employees whose last name starts with 'E' — 7,330 rows.
select emp_no, first_name, last_name from employees
where last_name like 'E%';

# Find all employees hired in the 90s — 135,214 rows.
select emp_no, first_name, last_name, hire_date from employees
where hire_date between '1990-01-01' and '1999-12-31';

# Find all employees born on Christmas — 842 rows.
select emp_no, first_name, last_name, birth_date from employees
where birth_date like '%-12-25';

# Find all employees with a 'q' in their last name — 1,873 rows.
select emp_no, first_name, last_name from employees
where last_name like '%q%';

# Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN — 709 rows.
select emp_no, first_name, last_name from employees
where first_name = 'Irena'
or first_name =  'Vidya'
or first_name = 'Maya';

# Add a condition to the previous query to find everybody with those
# names who is also male — 441 rows.
select emp_no, first_name, last_name, gender from employees
where (first_name = 'Irena'
or first_name =  'Vidya'
or first_name = 'Maya')
and gender = 'M';

# Find all employees whose last name starts or ends with 'E' — 30,723 rows.
select emp_no, first_name, last_name from employees
where last_name like 'E%' or last_name like '%E';

# Duplicate the previous query and update it to find all employees whose
# last name starts and ends with 'E' — 899 rows.
select emp_no, first_name, last_NAME from employees
where last_name like 'E%' and last_name like '%E';

# Find all employees hired in the 90s and born on Christmas — 362 rows.
select emp_no, first_name, last_name, birth_date, hire_date from employees
where (hire_date between '1990-01-01' and '1999-12-31')
and birth_date like '%-12-25';

# Find all employees with a 'q' in their last name but not 'qu' — 547 rows.
select emp_no, first_name, last_name from employees
where last_name like '%q%' and last_name not like '%qu%';