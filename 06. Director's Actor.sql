-- Problem: https://www.codingninjas.com/codestudio/problems/director-s-actor_2246916?topList=top-100-sql-problems

SELECT actor_id, director_id
FROM ActorDirector
GROUP BY actor_id, director_id
HAVING COUNT(1) >= 3
