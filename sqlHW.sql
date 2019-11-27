select employees.emp_no,employees.last_name,employees.first_name,employees.gender,salaries.salary
from employees 
inner join salaries on salaries.emp_no = employees.emp_no;

select employees.emp_no,employees.last_name,employees.first_name,employees.hire_date 
from employees 
where employees.hire_date between '1986-01-01' and '1986-12-31';

select departments.dept_no,departments.dept_name,employees.emp_no,employees.last_name,employees.first_name,dept_manager.from_date,dept_manager.to_date
from departments 
inner join dept_manager on departments.dept_no = dept_manager.dept_no
inner join employees on employees.emp_no = dept_manager.emp_no;

select employees.emp_no, employees.last_name, employees.first_name,departments.dept_name
from departments
inner join dept_manager on departments.dept_no = dept_manager.dept_no
inner join employees on employees.emp_no = dept_manager.emp_no;

select * from employees
where employees.first_name = 'Hercules' and employees.last_name like 'B%';

select employees.emp_no,employees.last_name, employees.first_name, departments.dept_name
from departments
inner join dept_manager on departments.dept_no = dept_manager.dept_no
inner join employees on employees.emp_no = dept_manager.emp_no
where departments.dept_name = 'Sales';

select employees.emp_no,employees.last_name, employees.first_name, departments.dept_name
from departments
inner join dept_manager on departments.dept_no = dept_manager.dept_no
inner join employees on employees.emp_no = dept_manager.emp_no
where departments.dept_name = 'Sales' or departments.dept_name = 'Development';


SELECT employees.last_name, 
count(employees.last_name)
FROM employees
group by employees.last_name
order by employees.last_name desc;



