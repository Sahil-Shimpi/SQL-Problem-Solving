-- Problem: https://www.codingninjas.com/codestudio/problems/number-of-comments-per-post_2117115?topList=top-100-sql-problems

SELECT DISTINCT s1.sub_id AS post_id,
COUNT(DISTINCT s2.sub_id) AS number_of_comments 
FROM Submissions s1
LEFT JOIN Submissions s2 
ON s1.sub_id = s2.parent_id
WHERE s1.parent_id is null 
OR s1.parent_id=s2.parent_id
GROUP BY s1.sub_id;
