CREATE TABLE sales.customers (
    customer_id INT,
    customer_name VARCHAR(100),
    region VARCHAR(50),
    created_date DATE
);
INSERT INTO sales.customers VALUES
(1, 'Contoso Ltd', 'West', '2024-01-15'),
(2, 'Fabrikam Inc', 'East', '2024-01-20'),
(3, 'Northwind Traders', 'Central', '2024-02-01');

SELECT * FROM sales.customers WHERE region = 'West';

SELECT region, COUNT(*) as customer_count
FROM sales.customers
GROUP BY region;

CREATE VIEW sales.customers_by_region AS
SELECT region, COUNT(*) as customer_count
FROM sales.customers
GROUP BY region;

SELECT * FROM sales.customers_by_region;