--creates a table with the NOT NULL constraint
CREATE TABLE products (
	product_id INT,
    product_name VARCHAR(25),
    price DECIMAL(4, 2) NOT NULL
);

--modifies a table that has already been created with the NOT NULL constraint
ALTER TABLE products
MODIFY price DECIMAL(4, 2) NOT NULL;

--this will through an error
INSERT INTO products
VALUES (104, "cookie", NULL); --3rd option cannot be NULL

SELECT * FROM products;