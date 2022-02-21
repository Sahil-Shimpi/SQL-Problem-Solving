-- Problem: https://www.codingninjas.com/codestudio/problems/big-country_2105461?topList=top-100-sql-problems&leftPanelTab=1

SELECT name, population, area
FROM World
WHERE
(
    area > 3000000
    OR
    population > 25000000
)
