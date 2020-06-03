use employees;
show tables;
select * from dept_emp;
select * from dept_manager;

select dept_name as 'Department', concat(first_name, ' ', last_name) as 'Department Manager'
from departments as d
join dept_manager as dm
on dm.dept_no = d.dept_no
join employees as e
on dm.emp_no = e.emp_no
WHERE dm.to_date = '9999-01-01'
order by dept_name;

# Find the name of all departments currently managed by women.
select dept_name as 'Department', concat(first_name, ' ', last_name) as 'Department Manager', gender
from departments as d
join dept_manager as dm
on dm.dept_no = d.dept_no
join employees as e
on dm.emp_no = e.emp_no
WHERE dm.to_date = '9999-01-01' and e.gender = 'F'
order by dept_name;

# Find the current titles of employees currently working in the Customer Service department.

select titles.title as 'Title', count( titles.emp_no ) as 'Count'
from titles
join dept_emp as de
on titles.emp_no = de.emp_no
join departments as d
on de.dept_no = d.dept_no
where titles.to_date  > curdate()
and d.dept_name = 'Customer Service'
and de.to_date > curdate()
group by titles.title;

# Find the current salary of all current managers.
select dept_name as 'Department', concat(first_name, ' ', last_name) as 'Department Manager',
s.salary as Salary
from departments as d
join dept_manager as dm
on dm.dept_no = d.dept_no
join employees as e
on dm.emp_no = e.emp_no
join salaries as s
on e.emp_no = s.emp_no
WHERE dm.to_date > curdate() and s.to_date > curdate()
order by dept_name;

-- Find the names of all current employees, their department name,
-- and their current manager's name.
select concat(e.first_name, ' ',e.last_name) as 'Employee Name',
d.dept_name as 'Department Name',
concat(manager.first_name, ' ', manager.last_name) as 'Manager Name'
from employees as e
join dept_emp as de
on  de.emp_no = e.emp_no
join departments as d
on d.dept_no = de.dept_no
join dept_manager as dm
on d.dept_no = dm.dept_no
join employees as manager
on dm.emp_no = manager.emp_no
where de.to_date > curdate()
and dm.to_date > curdate()
order by d.dept_name;
