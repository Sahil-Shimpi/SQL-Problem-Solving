-- Problem: https://www.codingninjas.com/codestudio/problems/friend-request_2111952?topList=top-100-sql-problems

SELECT COUNT(*) 
AS unique_request 
FROM 
(
    SELECT DISTINCT requester_id, accepter_id FROM RequestAccepted
) AS A;
SELECT COUNT(*) 
AS total_request 
FROM 
(
    SELECT DISTINCT sender_id, send_to_id FROM FriendRequest
) AS B;
