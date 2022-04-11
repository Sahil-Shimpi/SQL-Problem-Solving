-- Problem: https://www.codingninjas.com/codestudio/problems/ad-free-sessions_2191517?topList=top-100-sql-problems&leftPanelTab=1

SELECT DISTINCT session_id
FROM 
Playback P LEFT JOIN Ads A
ON
P.customer_id = A.customer_id
WHERE
A.timestamp NOT BETWEEN P.start_time AND P.end_time
ORDER BY session_id;
