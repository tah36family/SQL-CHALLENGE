-- 1. salary by employee
select emp.emp_no,
	   emp.last_name,
	   emp.first_name,
	   emp.sex,
	   sal.salary
from employees as emp
 left join salaries as sal
 on(emp.emp_no= sal.emp_no)
 
---2 employees hired in 1986
select * 
from employees
where hire_date between '1986-01-01' and '1986-12-31';
 
 3--- Manager of each department
 select dm.dept_no,
 	d.dept_name,
	dm.emp_no,
	e.last_name,
	e.first_name
from dept_manager as dm
inner join departments as d
on (dm.dept_no = d.dept_no)
inner join employees as e
on (dm.emp_no = e.emp_no);

---4 manager of each department
select dm.dept_no,
	d.dept_name,
	dm.emp_no,
	e.last_name,
	e.first_name
	from dept_manager as dm
	inner join departments as d
	on (dm.dept_no = d.dept_no)
	inner join employees as e
	on (dm.emp_no = e.emp_no);
	
---5 Department of each employees
select e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
from employees as e
inner join dept_emp as de
  on (e.emp_no = de.emp_no)
 inner join department as d
 on (de.dept_no = d.dept_no)
 order by e.emp_no;
 
 ---6 employees whose first name is "mercules" and last name begins with "B"
 select * 
 from employees
 where first_name = 'Mercules'
 and last_name like 'B%';
 
 ---7 employees in the sales department
 select e.emp_no,
 	e.last_name,
	e.first_name,
	d.dept_name,
from employee as e
inner join dept_emp as de
on (e.emp_no = de.dept_no)
inner join department as d
on (de.dept_no = d.dept_no)
where d.dept_name = 'sales'
order by e.emp_no;

----8 employees in sales and development departments
select e.emp_no,
   e.last_name,
   e.first_name,
   d.dept_name
 from employees as e
 inner join dept_emp as de
 on (e.emp_no = de.emp_no)
 inner join departments as d
 on (de.dept_no = d.dept_no)
 where d.dept_name in ('sales', 'development')
 order by e.emp_no;
 
 --9 the frquency of employees las name
 select last_name, count (last_name)
 from employees
 group by last_name
 order by count(last_name);
 

	
	
 
 
 
	   
