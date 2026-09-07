USE ecommerce_db;

-- Customers
INSERT INTO Customers
(first_name, last_name, email, city, registration_date)
VALUES
('John', 'Smith', 'john.smith@email.com', 'New York', '2025-01-10'),
('Sarah', 'Johnson', 'sarah.johnson@email.com', 'Chicago', '2025-02-15'),
('Michael', 'Brown', 'michael.brown@email.com', 'Dallas', '2025-03-20'),
('Emily', 'Davis', 'emily.davis@email.com', 'Seattle', '2025-04-05'),
('David', 'Wilson', 'david.wilson@email.com', 'Boston', '2025-05-12'),
('Jessica', 'Miller', 'jessica.miller@email.com', 'Austin', '2025-06-18'),
('Robert', 'Moore', 'robert.moore@email.com', 'Denver', '2025-07-22'),
('Linda', 'Taylor', 'linda.taylor@email.com', 'Atlanta', '2025-08-09');


-- Products
INSERT INTO Products
(product_name, category, price, stock_quantity)
VALUES
('Laptop', 'Electronics', 899.99, 25),
('Wireless Mouse', 'Electronics', 29.99, 100),
('Keyboard', 'Electronics', 49.99, 75),
('Monitor', 'Electronics', 249.99, 40),
('Headphones', 'Electronics', 79.99, 60),
('Office Chair', 'Furniture', 199.99, 30),
('Desk', 'Furniture', 299.99, 20),
('Webcam', 'Electronics', 59.99, 50);


-- Orders
INSERT INTO Orders
(customer_id, order_date, order_status, total_amount)
VALUES
(1, '2025-08-01', 'Delivered', 929.98),
(2, '2025-08-03', 'Delivered', 249.99),
(3, '2025-08-05', 'Shipped', 329.97),
(4, '2025-08-07', 'Processing', 79.99),
(5, '2025-08-10', 'Delivered', 499.98),
(1, '2025-08-12', 'Delivered', 109.98),
(6, '2025-08-15', 'Shipped', 299.99),
(7, '2025-08-18', 'Processing', 259.97),
(8, '2025-08-20', 'Delivered', 59.99);


-- Order Items
INSERT INTO Order_Items
(order_id, product_id, quantity, unit_price)
VALUES
(1, 1, 1, 899.99),
(1, 2, 1, 29.99),

(2, 4, 1, 249.99),

(3, 6, 1, 199.99),
(3, 3, 1, 49.99),
(3, 2, 1, 29.99),

(4, 5, 1, 79.99),

(5, 7, 1, 299.99),
(5, 6, 1, 199.99),

(6, 5, 1, 79.99),
(6, 2, 1, 29.99),

(7, 7, 1, 299.99),

(8, 6, 1, 199.99),
(8, 2, 2, 29.99),

(9, 8, 1, 59.99);


-- Payments
INSERT INTO Payments
(order_id, payment_date, payment_method, payment_status, amount)
VALUES
(1, '2025-08-01', 'Credit Card', 'Completed', 929.98),
(2, '2025-08-03', 'PayPal', 'Completed', 249.99),
(3, '2025-08-05', 'Credit Card', 'Completed', 329.97),
(4, '2025-08-07', 'Credit Card', 'Completed', 79.99),
(5, '2025-08-10', 'Debit Card', 'Completed', 499.98),
(6, '2025-08-12', 'PayPal', 'Completed', 109.98),
(7, '2025-08-15', 'Credit Card', 'Completed', 299.99),
(8, '2025-08-18', 'Debit Card', 'Pending', 259.97),
(9, '2025-08-20', 'PayPal', 'Completed', 59.99);
