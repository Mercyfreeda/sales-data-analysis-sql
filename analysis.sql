-- Total sales by customer
SELECT c.customer_name, SUM(o.total_amount) AS total_sales
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_name;

-- Sales by country
SELECT c.country, SUM(o.total_amount) AS total_sales
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.country;

-- Monthly sales trend
SELECT MONTH(order_date) AS month, SUM(total_amount) AS monthly_sales
FROM orders
GROUP BY MONTH(order_date);
