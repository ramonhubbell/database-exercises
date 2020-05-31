use employees;

# Find all the employees with the same hire date as employee 101010 using a subquery.
# 69 Rows.
select emp_no, first_name, last_name, hire_date
from employees
where hire_date in (
    select hire_date
    from employees
    where emp_no = 101010
    );

# Find all the titles held by all employees with the first name Aamod.
# 314 total titles, 6 unique titles
select title
from titles
where emp_no in (
    select emp_no
    from employees
    where first_name = 'Aamod'
)
order by title;

# Find all the current department managers that are female.
select first_name, last_name, gender
from employees
where emp_no in (
    select emp_no
    from dept_manager
    where gender = 'F'
      and to_date > curdate()
    );
