-- Problem: https://www.codingninjas.com/codestudio/problems/imdb_1755913?topList=top-100-sql-problems

select genre, max((rating + metacritic/10.0)/2.0) as weighted_rating
from earning
left join
IMDB on earning.movie_id = IMDB.movie_id and title like '%2014%'
left join
genre on earning.movie_id = genre.movie_id where genre is not null
group by 1
having max((rating + metacritic/10.0)/2.0) > 0
order by 1
