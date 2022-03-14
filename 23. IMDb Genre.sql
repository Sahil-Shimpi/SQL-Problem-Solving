-- Problem: https://www.codingninjas.com/codestudio/problems/imdb_1755912?topList=top-100-sql-problems

select genre, max(Domestic + Worldwide - Budget) as net_profit
from earning
left join
IMDB on earning.movie_id = IMDB.movie_id and title like '%2012%'
left join
genre on earning.movie_id = genre.movie_id where genre is not null
group by 1
having max(Domestic + Worldwide - Budget) > 0
order by 1
