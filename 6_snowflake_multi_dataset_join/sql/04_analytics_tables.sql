
USE DATABASE ECOMMERCE_DB;

-- Create ANALYTICS schema if not exists
CREATE SCHEMA IF NOT EXISTS ANALYTICS;

-- Final Order Report Table
CREATE OR REPLACE TABLE ANALYTICS.final_order_report AS
SELECT 
    o.order_id,
    c.customer_name,
    c.city,
    p.product_name,
    p.category,
    o.order_amount,
    o.order_date
FROM RAW.orders o
JOIN RAW.customers c
    ON o.customer_id = c.customer_id
JOIN RAW.products p
    ON o.product_id = p.product_id;

-- Category Level Sales Summary
CREATE OR REPLACE TABLE ANALYTICS.category_summary AS
SELECT 
    p.category,
    SUM(o.order_amount) AS total_sales,
    COUNT(o.order_id) AS total_orders
FROM RAW.orders o
JOIN RAW.products p
    ON o.product_id = p.product_id
GROUP BY p.category;

