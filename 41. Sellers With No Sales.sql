-- Problem: https://www.codingninjas.com/codestudio/problems/sellers-with-no-sales_2188790?topList=top-100-sql-problems

SELECT seller_name 
FROM Seller AS SELLER_NAME 
WHERE seller_id NOT IN 
(
	SELECT DISTINCT(seller_id) 
	FROM Orders 
	WHERE sale_date 
	BETWEEN '2020-01-01' AND '2020-12-31'
) 
ORDER BY seller_name;
