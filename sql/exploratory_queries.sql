/*
====================================================
PHASE 1: EXPLORATORY SQL ANALYSIS
Understanding:
~ data volume
~ date range
~ business scale
~ data quality

====================================================
*/

-- Query 1: Total Orders
SELECT COUNT(*) AS total_orders
FROM orders;

-- Query 2: Order Status Distribution
SELECT 
    order_status,
    COUNT(*) AS total_orders
FROM orders
GROUP BY order_status
ORDER BY total_orders DESC;

-- Query 3: Dataset Date Range
SELECT 
    MIN(order_purchase_timestamp) AS first_order,
    MAX(order_purchase_timestamp) AS last_order
FROM orders;

-- Query 4: Total Customers
SELECT COUNT(DISTINCT customer_unique_id) AS total_customers
FROM customers;

-- Query 5: Total Revenue
SELECT ROUND(SUM(price), 2) AS total_revenue
FROM order_items;
