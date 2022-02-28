-- Problem: https://www.codingninjas.com/codestudio/problems/classes-more-than-5-students_2105464?topList=top-100-sql-problems

SELECT class
FROM
(SELECT class, COUNT(DISTINCT student) AS num
FROM courses
GROUP BY class) AS temp_table
WHERE num >= 5
