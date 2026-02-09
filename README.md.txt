# Sales Data Analysis using MySQL

## Project Overview
This project analyzes sales data to understand customer spending behavior, regional performance, and sales trends using SQL.

## Tools Used
- MySQL
- MySQL Workbench

## Database Tables
- customers
- orders
- order_items

## Key Analysis
- Total sales by customer
- Country-wise sales
- Top customers by revenue
- Monthly sales trends

## Sample SQL Queries
```sql
SELECT c.customer_name, SUM(o.total_amount) AS total_sales
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_name;
