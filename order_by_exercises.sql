use employees;

# Modify your first query to order by first name. The first result
# should be Irena Reutenauer and the last result should be Vidya Simmen. 709 rows
select emp_no, first_name, last_name from employees
where first_name in ('Irena', 'Vidya', 'Maya')
order by first_name;

select emp_no, first_name, last_name from employees
where first_name in ('Irena', 'Vidya', 'Maya')
order by first_name desc;

# Update the query to order by first name and then last name. The first
# result should now be Irena Acton and the last should be Vidya Zweizig.
select emp_no, first_name, last_name from employees
where first_name in ('Irena', 'Vidya', 'Maya')
order by first_name, last_name;

select emp_no, first_name, last_name from employees
where first_name in ('Irena', 'Vidya', 'Maya')
order by first_name desc, last_name desc;

# Change the order by clause so that you order by last name before first
# name. Your first result should still be Irena Acton but now the last result
# should be Maya Zyda.
select emp_no, first_name, last_name from employees
where first_name in ('Irena', 'Vidya', 'Maya')
order by last_name, first_name;

select emp_no, first_name, last_name from employees
where first_name in ('Irena', 'Vidya', 'Maya')
order by last_name desc, first_name desc;

# Update your queries for employees with 'E' in their last name to sort the
# results by their employee number. Your results should not change! - 7,330 rows.
select emp_no, first_name, last_name from employees
where last_name like 'E%'
order by emp_no;

-- 30,723 rows.
select emp_no, first_name, last_name from employees
where last_name like 'E%' or last_name like '%E'
order by emp_no;

# Now reverse the sort order for both queries.
select emp_no, first_name, last_name from employees
where last_name like 'E%' or last_name like '%E'
order by emp_no desc;

# Find all employees whose last name starts with 'E' - 899 rows.
select emp_no, first_name, last_name from employees
where last_name like 'E%' and last_name like '%E'
order by emp_no;

select emp_no, first_name, last_name from employees
where last_name like 'e%' and last_name like '%e'
order by emp_no desc;

# Change the query for employees hired in the 90s and born on Christmas
# such that the first result is the oldest employee who was hired last.
# It should be Khun Bernini.
select emp_no, birth_date, first_name, last_name, hire_date from employees
where hire_date like '199%' and birth_date like '%-12-25'
order by birth_date, hire_date desc;
