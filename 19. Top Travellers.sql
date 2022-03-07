-- Problem: https://www.codingninjas.com/codestudio/problems/top-travellers_2117112?topList=top-100-sql-problems

SELECT u.name AS name, COALESCE(SUM(r.distance),0) 
AS travelled_distance
FROM Users u 
LEFT JOIN Rides r
ON u.id = r.user_id
GROUP BY u.name
ORDER BY travelled_distance DESC, u.name
