-- Problem: https://www.codingninjas.com/codestudio/problems/fix-names-in-a-table_2188793?topList=top-100-sql-problems

SELECT user_id, 
concat(UPPER(SUBSTRING(name, 1,1)), LOWER(SUBSTRING(name,2))) 
AS name
FROM users
order by 1;
