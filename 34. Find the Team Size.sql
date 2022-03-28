-- Problem: https://www.codingninjas.com/codestudio/problems/find-the-team-size_2117109?topList=top-100-sql-problems

SELECT e.employee_id, team_size
FROM Employee e
JOIN (SELECT team_id, COUNT(*)
      AS team_size
      FROM Employee
      GROUP BY team_id
     ) t
ON e.team_id = t.team_id
