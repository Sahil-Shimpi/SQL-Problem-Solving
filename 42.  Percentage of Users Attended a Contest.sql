-- Problem: https://www.codingninjas.com/codestudio/problems/percentage-of-users-attended-a-contest_2188791?topList=top-100-sql-problems

SELECT contest_id, percentage
FROM
(
	SELECT DISTINCT contest_id,
	ROUND(ROUND((COUNT(*)/(SELECT COUNT(DISTINCT user_id) FROM Users)),4)*100,2) 
	AS percentage
	FROM Register
	GROUP BY 1
) x
ORDER BY percentage DESC, contest_id ASC;

