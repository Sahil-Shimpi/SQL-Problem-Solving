-- Problem: https://www.codingninjas.com/codestudio/problems/triangle-judgement_2111954?topList=top-100-sql-problems

SELECT 
    x,
    y,
    z,
    CASE
        WHEN x + y > z AND x + z > y AND y + z > x THEN 'Yes'
        ELSE 'No'
    END AS "triangle"
FROM triangle
