-- Problem: https://www.codingninjas.com/codestudio/problems/biggest-single-number_2111955?topList=top-100-sql-problems

SELECT
    MAX(num) AS num
FROM
    (SELECT
        num
    FROM
        my_numbers
    GROUP BY num
    HAVING COUNT(num) = 1) AS t;
