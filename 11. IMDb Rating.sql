-- Problem: https://www.codingninjas.com/codestudio/problems/testingg-sql_1755903?topList=top-100-sql-problems

SELECT Title, Rating 
FROM IMDB LEFT JOIN genre
ON 
IMDB.Movie_id = genre.Movie_id
WHERE
genre.genre LIKE 'C%'
AND 
IMDB.Title LIKE '%(2014)%'
AND
IMDB.Budget > 40000000
