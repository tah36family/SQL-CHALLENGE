Create table employees(
	emp_no int not null,
	birth_date date not null,
	first_name varchar not null,
	last_name varchar not null,
	sex varchar not null,
	hire_date date not null,
	 primary key (emp_no)
);

create table departments(
	dept_no varchar not null,
	dept_name varchar not null,
	primary key (dept_no),
	unique 		(dept_name)	
);

create table dept_manager(
	dept_no varchar not null,
	emp_no int not null,
	foreign key (emp_no) references employees (emp_no),
	foreign key (dept_no) references departments (dept_no),
	primary key (emp_no,dept_no)
);

create table dept_emp(
	emp_no int not null,
	dept_no varchar not null,
	foreign key (emp_no)references employees (emp_no),
	foreign key (dept_no) references departments(dept_no),
	primary key (emp_no,dept_no)	
);

-- DROP TABLE titles;
create table titles(
	title_id varchar not null,
	title varchar not null,
	primary key(title_id)
);
