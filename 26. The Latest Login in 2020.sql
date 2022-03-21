-- Problem: https://www.codingninjas.com/codestudio/problems/the-latest-login-in-2020_2188789?topList=top-100-sql-problems

SELECT
    user_id,
    MAX(time_stamp) AS last_stamp 
FROM Logins
WHERE EXTRACT(YEAR FROM time_stamp) = 2020
GROUP BY user_id;
