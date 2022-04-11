-- Problem: https://www.codingninjas.com/codestudio/problems/queries-quality-and-percentage_2117108?topList=top-100-sql-problems

SELECT query_name,  
ROUND (AVG(rating / position), 2) AS quality  
FROM Queries
GROUP BY query_name;
