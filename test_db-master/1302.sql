use employees;
select * from employees.salaries;

-- min
select MIN(salary) as SALARIO_MAIS_BAIXO from salaries;

-- min raiz 
select salary from salaries order by salary asc limit 1;

-- max
select MAX(salary) as SALARIO_MAIS_ALTO from salaries;

-- max raiz
select salary from salaries order by salary desc limit 1;

-- count
select count(*) from salaries;
select count(*) from employees where gender = "M";
select count(*) from employees where first_name = "Georgi";

-- like (* pesquisar)
select * from employees where first_name like "Geo%";
select * from employees where first_name like "%or";
