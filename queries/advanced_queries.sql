USE ecommerce_db;

-- 1. Count orders by status
SELECT 
    order_status,
    COUNT(*) AS total_orders
FROM Orders
GROUP BY order_status;


-- 2. Calculate total sales by order status
SELECT 
    order_status,
    SUM(total_amount) AS total_sales
FROM Orders
GROUP BY order_status;


-- 3. Find customers who placed more than one order
SELECT 
    customer_id,
    COUNT(order_id) AS total_orders
FROM Orders
GROUP BY customer_id
HAVING COUNT(order_id) > 1;


-- 4. Find the most expensive product
SELECT 
    product_name,
    price
FROM Products
ORDER BY price DESC
LIMIT 1;


-- 5. Find the cheapest product
SELECT 
    product_name,
    price
FROM Products
ORDER BY price ASC
LIMIT 1;


-- 6. Find the total quantity sold for each product
SELECT 
    p.product_name,
    SUM(oi.quantity) AS total_quantity_sold
FROM Products p
INNER JOIN Order_Items oi
    ON p.product_id = oi.product_id
GROUP BY p.product_id, p.product_name;


-- 7. Find products with an average price above $100
SELECT 
    category,
    AVG(price) AS average_price
FROM Products
GROUP BY category
HAVING AVG(price) > 100;


-- 8. Find customers who spent more than $500
SELECT 
    c.first_name,
    c.last_name,
    SUM(o.total_amount) AS total_spent
FROM Customers c
INNER JOIN Orders o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
HAVING SUM(o.total_amount) > 500;


-- 9. Find the total number of products in each category
SELECT 
    category,
    COUNT(*) AS total_products
FROM Products
GROUP BY category;


-- 10. Find the highest-value order
SELECT 
    order_id,
    customer_id,
    total_amount
FROM Orders
ORDER BY total_amount DESC
LIMIT 1;
