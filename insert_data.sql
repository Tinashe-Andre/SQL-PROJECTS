--adding data into a table
INSERT INTO employees
VALUES (1, "Eugene", "Krabs", 25.50, "2025-01-02");

SELECT * FROM employees;

--inserting multiple rows at once
INSERT INTO employees
VALUES (2, "Squidward", "Tentacles", 15.00, "2025-01-03"), 
       (3, "Spongebob", "Squarepants", 12.50, "2025-01-04"), 
       (4, "Patrick", "Star", 12.50, "2025-01-05"), 
       (5, "Sandy", "Cheeks", 17.25, "2025-01-06");

SELECT * FROM employees;

--inserting select data and leaving some out
INSERT INTO employees (employee_id, first_name, last_name)
VALUE (6, "Sheldon", "Plankton"); --the missing data is NULL

SELECT * FROM employees;

--selecting specific columns
SELECT first_name, last_name
FROM employees;


--where clause
SELECT *
FROM employees
WHERE employee_id = 1;

SELECT *
FROM employees
WHERE hourly_pay >= 15;

SELECT *
FROM employees
WHERE employee_id != 1; --not comparison operator

SELECT *
FROM employees
WHERE hire_date IS NULL; --IS NOT also