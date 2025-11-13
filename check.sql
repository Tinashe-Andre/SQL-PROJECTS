--MAKING A TABLE WITH A CHECK FOR MINIMUM WAGE

CREATE TABLE employees (
    employee_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    hourly_pay DECIMAL(5, 2),
    hire_date DATE,
    CONSTRAINT chk_hourly_pay CHECK (hourly_pay >= 10.00)
);

--ALTERING AN EXISTING TABLE AND ADDING A CHECK
ALTER TABLE employees
ADD CONSTRAINT chk_hourly_pay CHECK(hourly_pay >= 10.00);
        
--WILL THROW AN ERROR 
INSERT INTO employees
VALUES (6, "Sheldon", "Plankton", 5.00, "2025-01-07");

--DROPPING THE CHECK
ALTER TABLE employees
DROP CHECK chk_hourly_pay;