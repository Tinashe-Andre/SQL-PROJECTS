-- create_database.sql_and_use_as_default_schema
CREATE DATABASE myDB;
USE myDB;

-- dropping_a_database
DROP DATABASE myDB;

--altering a databse
ALTER DATABASE myDB READ ONLY = 1; --makes database read only
ALTER DATABASE myDB READ ONLY = 0; --disable read only

-- create_table_and_columns
CREATE TABLE employees (
    employee_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    hourly_pay DECIMAL(5, 2),
    hire_date DATE
);

--displaying table, renaming and dropping
SELECT * FROM employees;
RENAME TABLE employees TO workers;
DROP TABLE employees;

--altering table by adding new column
ALTER TABLE employees
ADD phone_number VARCHAR(15);

--renaming a column
ALTER TABLE employees
RENAME COLUMN phone_number TO email;

--modifying data type
ALTER TABLE employees
MODIFY COLUMN email VARCHAR(100);

--moving position of a column
ALTER TABLE employees
MODIFY email VARCHAR(100)
AFTER last_name; --FIRST (if you need it to be first)

SELECT * FROM employees;

--dropping a column
ALTER TABLE employees
DROP COLUMN email;

SELECT * FROM employees;