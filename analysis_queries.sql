-- All business SQL queries with comments
-- 1. Monthly Revenue
SELECT 
    DATE_FORMAT(o.order_date, '%Y-%m') AS month,
    SUM(oi.quantity * oi.price) AS revenue
FROM Orders o
JOIN Order_Items oi ON o.order_id = oi.order_id
GROUP BY month;

-- 2. Top Selling Products
SELECT 
    p.product_name,
    SUM(oi.quantity) AS total_sold
FROM Order_Items oi
JOIN Products p ON oi.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_sold DESC;

-- 3. Average Order Value (AOV)
SELECT 
    ROUND(SUM(oi.quantity * oi.price) / COUNT(DISTINCT o.order_id), 2) AS AOV
FROM Orders o
JOIN Order_Items oi ON o.order_id = oi.order_id;

-- 4. Customers With Only One Purchase
SELECT customer_id
FROM Orders
GROUP BY customer_id
HAVING COUNT(order_id) = 1;

-- 5. First Purchase Date of Each Customer
SELECT 
    customer_id,
    MIN(order_date) AS first_purchase_date
FROM Orders
GROUP BY customer_id;

-- 6. Revenue by Category
SELECT 
    p.category,
    SUM(oi.quantity * oi.price) AS revenue
FROM Order_Items oi
JOIN Products p ON oi.product_id = p.product_id
GROUP BY p.category;

-- 7. Customers With Repeat Purchases
SELECT customer_id
FROM Orders
GROUP BY customer_id
HAVING COUNT(order_id) > 1;

