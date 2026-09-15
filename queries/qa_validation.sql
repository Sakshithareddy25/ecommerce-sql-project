USE ecommerce_db;

-- 1. Check for customers with missing email addresses
SELECT *
FROM Customers
WHERE email IS NULL
   OR email = '';


-- 2. Check for products with invalid prices
SELECT *
FROM Products
WHERE price <= 0;


-- 3. Check for products with negative stock
SELECT *
FROM Products
WHERE stock_quantity < 0;


-- 4. Check for duplicate customer emails
SELECT 
    email,
    COUNT(*) AS duplicate_count
FROM Customers
GROUP BY email
HAVING COUNT(*) > 1;


-- 5. Check for orders with invalid amounts
SELECT *
FROM Orders
WHERE total_amount < 0;


-- 6. Check for orders with invalid statuses
SELECT *
FROM Orders
WHERE order_status NOT IN 
    ('Pending', 'Shipped', 'Delivered', 'Cancelled');


-- 7. Check for order items with invalid quantities
SELECT *
FROM Order_Items
WHERE quantity <= 0;


-- 8. Check for orders without a matching customer
SELECT o.*
FROM Orders o
LEFT JOIN Customers c
    ON o.customer_id = c.customer_id
WHERE c.customer_id IS NULL;


-- 9. Check for order items without a matching product
SELECT oi.*
FROM Order_Items oi
LEFT JOIN Products p
    ON oi.product_id = p.product_id
WHERE p.product_id IS NULL;


-- 10. Verify order total against order item totals
SELECT 
    o.order_id,
    o.total_amount AS order_total,
    SUM(oi.quantity * oi.unit_price) AS calculated_total
FROM Orders o
INNER JOIN Order_Items oi
    ON o.order_id = oi.order_id
GROUP BY o.order_id, o.total_amount
HAVING o.total_amount <> SUM(oi.quantity * oi.unit_price);
