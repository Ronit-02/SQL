USE ORG;

-- WHERE 
SELECT WORKER_ID, FIRST_NAME, SALARY FROM Worker WHERE SALARY >= 20000;

-- SALARY (10000, 20000)
SELECT WORKER_ID, FIRST_NAME, LAST_NAME, SALARY FROM Worker WHERE SALARY BETWEEN 10000 AND 20000;

-- HR, ADMIN
SELECT WORKER_ID, FIRST_NAME, DEPARTMENT FROM Worker WHERE DEPARTMENT = 'HR' OR DEPARTMENT = 'Admin';
SELECT WORKER_ID, FIRST_NAME, DEPARTMENT FROM Worker WHERE DEPARTMENT IN ('HR', 'Admin');
SELECT WORKER_ID, FIRST_NAME, DEPARTMENT FROM Worker WHERE DEPARTMENT NOT IN ('Account');

-- DUAL TABLE FUNCTIONS
SELECT 14 / 3;
SELECT now();
SELECT ucase('Ronit');

-- NOT
SELECT FIRST_NAME FROM Worker WHERE DEPARTMENT IS NULL;