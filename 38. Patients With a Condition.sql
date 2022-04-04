-- Problem: https://www.codingninjas.com/codestudio/problems/patients-with-a-condition_2196163?topList=top-100-sql-problems

SELECT patient_id, patient_name, conditions
FROM Patients
WHERE conditions LIKE '%DIAB1%';
