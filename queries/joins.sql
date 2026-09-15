USE ecommerce_db;

-- 1. Display customers and their orders
SELECT 
    c.first_name,
    c.last_name,
    o.order_id,
    o.order_date,
    o.order_status,
    o.total_amount
FROM Customers c
INNER JOIN Orders o
    ON c.customer_id = o.customer_id;


-- 2. Display orders with customer names
SELECT 
    o.order_id,
    c.first_name,
    c.last_name,
    o.order_date,
    o.total_amount
FROM Orders o
INNER JOIN Customers c
    ON o.customer_id = c.customer_id;


-- 3. Display products included in each order
SELECT 
    o.order_id,
    p.product_name,
    oi.quantity,
    oi.unit_price
FROM Order_Items oi
INNER JOIN Orders o
    ON oi.order_id = o.order_id
INNER JOIN Products p
    ON oi.product_id = p.product_id;


-- 4. Display customer names and the products they purchased
SELECT 
    c.first_name,
    c.last_name,
    p.product_name,
    oi.quantity
FROM Customers c
INNER JOIN Orders o
    ON c.customer_id = o.customer_id
INNER JOIN Order_Items oi
    ON o.order_id = oi.order_id
INNER JOIN Products p
    ON oi.product_id = p.product_id;


-- 5. Display all customers, including customers with no orders
SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    o.order_id,
    o.order_date
FROM Customers c
LEFT JOIN Orders o
    ON c.customer_id = o.customer_id;


-- 6. Find the total amount spent by each customer
SELECT 
    c.first_name,
    c.last_name,
    SUM(o.total_amount) AS total_spent
FROM Customers c
INNER JOIN Orders o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name;


-- 7. Find the number of orders placed by each customer
SELECT 
    c.first_name,
    c.last_name,
    COUNT(o.order_id) AS total_orders
FROM Customers c
LEFT JOIN Orders o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name;


-- 8. Display payment information with order details
SELECT 
    o.order_id,
    o.order_date,
    o.total_amount,
    p.payment_method,
    p.payment_status,
    p.amount
FROM Orders o
INNER JOIN Payments p
    ON o.order_id = p.order_id;
