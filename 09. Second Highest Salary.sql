-- Problem: https://www.codingninjas.com/codestudio/problems/second-highest-salary_2110760?topList=top-100-sql-problems

SELECT DISTINCT Salary
FROM Employee
ORDER BY Salary DESC
LIMIT 1 OFFSET 1;
