-- Problem: https://www.codingninjas.com/codestudio/problems/recyclable-and-low-fat-products_2181186?topList=top-100-sql-problems

SELECT product_id 
FROM Products
WHERE 
(
    low_fats = 'Y'
    AND
    recyclable = 'Y'
);
