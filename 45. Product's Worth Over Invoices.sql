-- Problem: https://www.codingninjas.com/codestudio/problems/product-s-worth-over-invoices_2188792?topList=top-100-sql-problems

SELECT p.name, 
SUM(i.rest) as rest,
SUM(i.paid) as paid,
SUM(i.canceled) as canceled,
SUM(i.refunded) as refunded
FROM Product p LEFT JOIN Invoice i
ON p.product_id = i.product_id
GROUP BY p.name;
