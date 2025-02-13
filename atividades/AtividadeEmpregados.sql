use employees;
SET SQL_SAFE_UPDATES = 0;
update employees set last_name = "Vaz" where last_name = "Aguiar Vaz";
select * from employees where last_name = "Vaz";