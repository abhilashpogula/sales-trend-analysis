CREATE TABLE orders (
    order_id INTEGER PRIMARY KEY,
    order_date TEXT,
    amount REAL,
    product_id INTEGER
);
INSERT INTO orders (order_id, order_date, amount, product_id) VALUES
(1, '2024-01-15', 100.0, 101),
(2, '2024-01-20', 150.0, 102),
(3, '2024-02-05', 200.0, 103),
(4, '2024-02-15', 300.0, 104),
(5, '2024-03-01', 250.0, 105),
(6, '2024-03-10', 180.0, 106),
(7, '2024-04-25', 220.0, 107),
(8, '2024-05-05', 260.0, 108),
(9, '2024-05-18', 190.0, 109),
(10, '2024-06-03', 300.0, 110);
SELECT 
    strftime('%Y', order_date) AS year,
    strftime('%m', order_date) AS month,
    SUM(amount) AS monthly_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM orders
GROUP BY year, month
ORDER BY year, month;
SELECT 
    strftime('%Y', order_date) AS year,
    strftime('%m', order_date) AS month
FROM orders;
SELECT 
    strftime('%Y', order_date) AS year,
    strftime('%m', order_date) AS month,
    SUM(amount) AS monthly_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM orders
GROUP BY year, month;

SELECT 
    strftime('%Y', order_date) AS year,
    strftime('%m', order_date) AS month,
    SUM(amount) AS monthly_revenue
FROM orders
GROUP BY year, month
LIMIT 3;
