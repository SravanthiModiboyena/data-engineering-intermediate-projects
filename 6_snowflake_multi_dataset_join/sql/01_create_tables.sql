
USE DATABASE ECOMMERCE_DB;

-- Create RAW schema if not exists
CREATE SCHEMA IF NOT EXISTS RAW;

USE SCHEMA RAW;

-- Customers Table
CREATE OR REPLACE TABLE customers (
    customer_id INT,
    customer_name STRING,
    email STRING,
    city STRING
);

-- Products Table
CREATE OR REPLACE TABLE products (
    product_id INT,
    product_name STRING,
    category STRING,
    price FLOAT
);

-- Orders Table
CREATE OR REPLACE TABLE orders (
    order_id INT,
    customer_id INT,
    product_id INT,
    order_amount FLOAT,
    order_date DATE
);

