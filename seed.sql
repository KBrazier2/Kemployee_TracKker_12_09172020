insert into department  (name)
values ('Operations'),('Sales'),('Finance'),('Warehouse');

select * from department; 

insert into role (title, salary, department_id)
values ('COO',100000,1), ('Sales Lead',500000,2),('Accountant',120000,3),('Supervisor',150000,4);

select * from role;

insert into employee (first_name, last_name, role_id)
values ('Kyle','Brazier',1),('Matt','Rikard',2),('Jenny','Vu',3),('Amanda','Catanese',4);

select * from employee;

select title, salary, name from role 
inner join department on role.department_id=department.id;

select first_name, last_name, title, salary, name from employee 
inner join role on employee.role_id=role.id 
inner join department on role.department_id=department.id;