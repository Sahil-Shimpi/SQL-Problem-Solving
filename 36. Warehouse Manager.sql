-- Problem: https://www.codingninjas.com/codestudio/problems/warehouse-manager_2181185?topList=top-100-sql-problems

SELECT name AS warehouse_name, 
SUM(units*Width*Length*Height) AS volume
FROM Warehouse 
LEFT JOIN Products 
ON Warehouse.product_id = Products.product_id
GROUP BY name;
