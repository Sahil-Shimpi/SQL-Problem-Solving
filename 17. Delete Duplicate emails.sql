-- Problem: https://www.codingninjas.com/codestudio/problems/delete-duplicate-emails_2111947?topList=top-100-sql-problems

DELETE FROM Person 
WHERE Id NOT IN 
(
    SELECT * FROM
    (
    	SELECT MIN(Id) FROM Person GROUP BY Email
    ) 
    AS p
);
    
SELECT * from Person;    
