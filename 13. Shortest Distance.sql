-- Problem: https://www.codingninjas.com/codestudio/problems/shortest-distence-in-a-line_2105463?topList=top-100-sql-problems

SELECT MIN(ABS(p1.x - p2.x)) 
AS shortest
FROM point p1
JOIN point p2
ON p1.x != p2.x
