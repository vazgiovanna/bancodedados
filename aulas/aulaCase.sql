use employees;

SELECT * FROM employees;

-- CHAR LENGTH (conta caracteres)
SELECT first_name , CHAR_LENGTH(first_name) AS qtd_char FROM employees;

-- CONCAT (contatena)
SELECT CONCAT(first_name, " nasceu em ", birth_date) FROM employees;

-- CONCAT_WS (contatena com separador)
SELECT CONCAT_WS(" * ", first_name, last_name) FROM employees;

-- CASE
-- U-UPPER-MAIÚSCULO
-- u-lower-minúsculo
SELECT first_name , LCASE(first_name), UCASE(first_name) FROM employees;

-- REPLACE (TERMO N QUER, TERMO DESEJA)
SELECT REPLACE (first_name, "Georgi", "tranquilo") last_name FROM employees WHERE emp_no = "100001";

-- LEFT "picotar quem e até onde"
SELECT first_name, LEFT(first_name,3) FROM employees;

-- RIGHT "picotar quem e até onde"
SELECT first_name, RIGHT(first_name,3) FROM employees;

SELECT hire_date, birth_date FROM employees;
-- DATE DIFF
SELECT DATEDIFF(hire_date, birth_date) FROM employees;

SELECT hire_date FROM employees;
SELECT first_name, DATE_FORMAT(hire_date, "%d / %m / %y") FROM employees;

CREATE TABLE emails(
	 id INT PRIMARY KEY AUTO_INCREMENT,
     primario VARCHAR(100) NOT NULL
);