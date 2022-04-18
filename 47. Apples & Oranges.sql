-- Problem: https://www.codingninjas.com/codestudio/problems/apples-oranges_2122060?topList=top-100-sql-problems

SELECT sale_date, 
SUM(CASE when fruit = 'apples' THEN sold_num ELSE sold_num*-1 END) as diff
FROM sales
GROUP BY sale_date
ORDER BY sale_date;
