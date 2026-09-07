USE ecommerce_db;

-- 1. Display all customers
SELECT *
FROM Customers;


-- 2. Display all products
SELECT *
FROM Products;


-- 3. Find products priced above $100
SELECT product_name, price
FROM Products
WHERE price > 100;


-- 4. Find products with stock below 50
SELECT product_name, stock_quantity
FROM Products
WHERE stock_quantity < 50;


-- 5. Find all delivered orders
SELECT *
FROM Orders
WHERE order_status = 'Delivered';


-- 6. Sort products from highest to lowest price
SELECT product_name, price
FROM Products
ORDER BY price DESC;


-- 7. Find customers from New York
SELECT first_name, last_name, city
FROM Customers
WHERE city = 'New York';


-- 8. Find products containing the word 'Mouse'
SELECT product_name, price
FROM Products
WHERE product_name LIKE '%Mouse%';


-- 9. Count the total number of customers
SELECT COUNT(*) AS total_customers
FROM Customers;


-- 10. Find the average product price
SELECT AVG(price) AS average_product_price
FROM Products;
