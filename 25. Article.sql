-- Problem: https://www.codingninjas.com/codestudio/problems/article_2181187?topList=top-100-sql-problems

SELECT DISTINCT viewer_id AS id
FROM Views
GROUP BY viewer_id, view_date
HAVING COUNT(DISTINCT article_id) > 1
ORDER BY 1;
