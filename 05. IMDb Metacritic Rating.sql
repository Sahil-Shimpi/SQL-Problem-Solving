-- Problem: https://www.codingninjas.com/codestudio/problems/imdb_1755910?topList=top-100-sql-problems

SELECT Title, Rating FROM
IMDB JOIN earning e
ON IMDB.Movie_id = e.Movie_id 
WHERE
MetaCritic > 60
AND
Domestic > 100000000
AND
Title LIKE '%(2012)%'
