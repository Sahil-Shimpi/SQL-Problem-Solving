-- Problem: https://www.codingninjas.com/codestudio/problems/duplicate-emails_2105465?topList=top-100-sql-problems

SELECT Email
FROM Person
GROUP BY Email
HAVING COUNT(1) >= 2
