-- Problem: https://www.codingninjas.com/codestudio/problems/running-total-for-different-genders_2188769?topList=top-100-sql-problems

SELECT s1.Gender, s1.day, 
SUM(s2.score_points) as total 

FROM Scores s1 JOIN Scores s2 
ON s1.day>= s2.day AND s1.gender = s2.gender

GROUP BY s1.gender, s1.day
ORDER by gender, day;
