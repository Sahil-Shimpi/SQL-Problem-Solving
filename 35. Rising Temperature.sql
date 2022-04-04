-- Problem: https://www.codingninjas.com/codestudio/problems/rising-temperature_2110761?topList=top-100-sql-problems

SELECT
    w1.id AS "Id"
FROM
    weather w1
        JOIN
    weather w2 ON w1.recordDate::DATE - w2.recordDate::DATE = 1
        AND w1.Temperature > w2.Temperature
