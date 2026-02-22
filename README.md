# Project 5 – Local Data Lake Implementation (Bronze-Silver-Gold Architecture)

## Project Overview

This project demonstrates the implementation of a Local Data Lake using Hadoop (HDFS) and Apache Spark.  
It follows the Medallion Architecture pattern: Bronze → Silver → Gold.

The goal of this project is to simulate a real-world data engineering workflow locally.

---

##Architecture

The data lake is divided into three layers:

### Bronze Layer (Raw Data)
- Stores raw ingested data
- No transformations applied
- Source: CSV file

### Silver Layer (Cleaned Data)
- Data cleaning & transformation
- Null handling
- Standardization
- Basic data validation

### Gold Layer (Aggregated Data)
- Business-ready datasets
- Aggregated reports
- Analytics-ready tables

---

## ech Stack

- Hadoop (HDFS)
- Apache Spark (PySpark)
- Linux (WSL)
- Git & GitHub

---

## Project Structure
