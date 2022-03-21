-- Problem: https://www.codingninjas.com/codestudio/problems/employees-earning-more-than-their-managers_2111944?topList=top-100-sql-problems

SELECT
     a.NAME AS Employee
FROM Employee AS a JOIN Employee AS b
     ON a.ManagerId = b.Id
     AND a.Salary > b.Salary
