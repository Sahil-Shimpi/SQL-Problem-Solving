-- Problem: https://www.codingninjas.com/codestudio/problems/winning-candidate_2119331?topList=top-100-sql-problems

SELECT Name AS "Name"
FROM
Candidate JOIN
(
	SELECT CandidateId 
	FROM Vote 
	GROUP BY CandidateId 
	LIMIT 1
) winner
ON Candidate.id = winner.CandidateId;
