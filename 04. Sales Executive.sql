-- Problem: https://www.codingninjas.com/codestudio/problems/sales-person_2105462?topList=top-100-sql-problems

SELECT name FROM Salesperson sp
WHERE
sp.sales_id 
NOT IN 
(SELECT o.sales_id FROM Orders o
WHERE o.com_id = 1)
