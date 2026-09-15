# ecommerce-sql-project


## Project Overview

This project demonstrates SQL database design, data analysis, and QA-focused data validation for a simple e-commerce application.

The project includes customer, product, order, order item, and payment data. SQL queries are used to retrieve, analyze, and validate backend data.

## Database Structure

The database contains the following tables:

- Customers
- Products
- Orders
- Order_Items
- Payments

## SQL Skills Demonstrated

- Database and table creation
- INSERT and sample data
- SELECT statements
- WHERE conditions
- ORDER BY
- LIKE
- COUNT and AVG
- INNER JOIN
- LEFT JOIN
- GROUP BY
- HAVING
- SUM and aggregate functions
- Data validation
- Referential integrity checks
- Duplicate data checks
- Backend data consistency validation

## QA Testing Focus

The project includes SQL queries designed to validate application backend data, including:

- Missing or invalid customer data
- Duplicate customer emails
- Invalid product prices
- Negative inventory values
- Invalid order statuses
- Invalid order quantities
- Orders without valid customers
- Order items without valid products
- Order total and item-level total validation

## Project Structure

```text
ecommerce-sql-project
│
├── database
│   ├── create_tables.sql
│   └── sample_data.sql
│
├── queries
│   ├── basic_queries.sql
│   ├── joins.sql
│   ├── advanced_queries.sql
│   └── qa_validation.sql
│
└── README.md
