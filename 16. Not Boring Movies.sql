-- Problem: https://www.codingninjas.com/codestudio/problems/not-boring-movies_2117047?topList=top-100-sql-problems

SELECT *
FROM cinema
WHERE MOD(id, 2) = 1
AND 
description != 'boring'
ORDER BY rating DESC
