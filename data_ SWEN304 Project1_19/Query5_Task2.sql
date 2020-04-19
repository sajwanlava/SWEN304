-- Stepwise

-- Single Nested Query
SELECT NickName FROM ROBBERS NATURAL JOIN ACCOMPLICES WHERE NoYears = 0 GROUP BY RobberId, NickName HAVING count(*) > (SELECT AVG(numRobberies) FROM (SELECT COUNT(*) AS numRobberies FROM ACCOMPLICES GROUP BY RobberId) AS R) ORDER BY SUM(Share) DESC;