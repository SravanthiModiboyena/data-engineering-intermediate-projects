# Snowflake Multi-Dataset Join & Analytics Project

## Project Overview

This project demonstrates how to build a cloud-based data warehouse solution using Snowflake.  
Multiple CSV datasets are loaded into Snowflake, transformed using SQL joins, and structured into analytics-ready tables.

The project follows a real-world Data Engineering layered architecture:

Stage → RAW Layer → ANALYTICS Layer

---

## Architecture

1. CSV files uploaded to Snowflake Internal Stage
2. Data loaded into RAW tables using COPY INTO
3. Multi-table joins performed
4. Business-level summary tables created in ANALYTICS schema

---

## Project Structure


---

## Datasets Used

- customers.csv  
- products.csv  
- orders.csv  

---

## Technologies Used

- Snowflake (Cloud Data Warehouse)
- SQL
- Git & GitHub
- WSL (Linux Environment)

---

## Implementation Steps

### Create Database & Schemas
- Created ECOMMERCE_DB
- Created RAW and ANALYTICS schemas

### Load Data into RAW Layer
Used COPY INTO to load CSV files from Snowflake stage into:

- RAW.customers
- RAW.products
- RAW.orders

### Multi-Table Join

Joined three datasets:

- Customers
- Products
- Orders

To generate a consolidated transaction report.

### Analytics Layer Creation

Created:

- ANALYTICS.final_order_report  
  → Transaction-level reporting table  

- ANALYTICS.category_summary  
  → Category-wise sales aggregation  

---

## Sample Business Output

- Customer-wise orders
- Product category sales
- Total revenue per category
- Order counts

---

## Key Concepts Demonstrated

- Snowflake Internal Stages
- COPY INTO command
- Multi-table JOIN
- Aggregations (SUM, COUNT)
- Layered Data Warehouse Architecture
- Debugging data load issues

---

## Learning Outcome

This project demonstrates practical knowledge of:

- Cloud data warehousing
- Data ingestion
- Data transformation
- Analytical modeling
- End-to-end Snowflake workflow

---

## Author

Sravanthi  
Aspiring Data Engineer