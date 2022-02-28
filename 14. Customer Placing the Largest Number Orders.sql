-- Problem: https://www.codingninjas.com/codestudio/problems/customer-placing-the-largest-number-of-orders_2111951?topList=top-100-sql-problems

SELECT customer_number
FROM 
(SELECT customer_number, COUNT(DISTINCT order_number) 
AS num
FROM Orders
GROUP BY Orders.customer_number) AS temp_table
ORDER BY num DESC
LIMIT 1
