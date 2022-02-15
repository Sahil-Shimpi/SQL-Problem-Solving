-- Problem: https://www.codingninjas.com/codestudio/problems/spotify-sessions_2246918?topList=top-100-sql-problems

SELECT session_id
FROM 
playback pb LEFT JOIN ads ad
ON 
pb.customer_id = ad.customer_id
AND 
ad.timestamp BETWEEN start_time and end_time
WHERE 
ad.customer_id IS NULL
