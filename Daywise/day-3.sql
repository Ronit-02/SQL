USE ORG;
SHOW TABLES;

-- WILDCARD
-- LIKE
SELECT * FROM Worker WHERE FIRST_NAME LIKE 'R%';

-- SORTING USING ORDER BY
SELECT * FROM Worker ORDER BY SALARY ASC;
SELECT * FROM Worker ORDER BY SALARY DESC;

-- DISTINCT
SELECT DISTINCT DEPARTMENT FROM Worker;

-- COUNT
SELECT COUNT(DISTINCT DEPARTMENT) FROM Worker;

-- GROUP BY
SELECT DEPARTMENT, COUNT(DEPARTMENT) FROM Worker GROUP BY DEPARTMENT;

-- AVG, MIN, MAX, SUM SALARY PER DEPARTMENT
SELECT DEPARTMENT, AVG(SALARY) FROM Worker GROUP BY DEPARTMENT;
SELECT DEPARTMENT, MIN(SALARY) FROM Worker GROUP BY DEPARTMENT;
SELECT DEPARTMENT, MAX(SALARY) FROM Worker GROUP BY DEPARTMENT;
SELECT DEPARTMENT, SUM(SALARY) FROM Worker GROUP BY DEPARTMENT;

-- HAVING
SELECT DEPARTMENT, COUNT(DEPARTMENT) FROM Worker GROUP BY DEPARTMENT HAVING COUNT(DEPARTMENT) > 2;