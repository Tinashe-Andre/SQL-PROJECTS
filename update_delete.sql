--updating specific value in a row
UPDATE employees 
SET hourly_pay = 10.25 
WHERE employee_id = 6; 
SELECT * FROM employees

--updating multiple values in a row
UPDATE employees 
SET hourly_pay = 10.50,
    hire_date = "2025-01-07"
WHERE employee_id = 6; 
SELECT * FROM employees;

--deleting a row
DELETE FROM employees
WHERE employee_id = NULL;
SELECT * FROM employees;