CREATE TABLE blinkit_db (
 order_id BIGINT,
 product_id INT,
 quantity  INT,
 unit_price FLOAT
  
);

SELECT SUM(quantity * unit_price) AS total_revenue
FROM blinkit; 

SELECT AVG(quantity * unit_price) AS avg_order_value
FROM blinkit;

SELECT product_id,
       SUM(quantity * unit_price) AS revenue
FROM blinkit
GROUP BY product_id
ORDER BY revenue DESC
LIMIT 5;


SELECT product_id,
       SUM(quantity) AS total_qty
FROM blinkit
GROUP BY product_id
ORDER BY total_qty DESC
LIMIT 5;