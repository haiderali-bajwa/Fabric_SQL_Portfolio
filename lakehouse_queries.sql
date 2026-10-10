SELECT TOP 10 * FROM customers


SELECT customer_name, region
FROM customers
WHERE region = 'West'
ORDER BY customer_name