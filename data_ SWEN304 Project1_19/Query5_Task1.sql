-- Single Nested Query
SELECT Security, Count(Security) AS numRobberies, AVG(Amount) AS averageAmount FROM ROBBERIES NATURAL JOIN BANKS GROUP BY Security;