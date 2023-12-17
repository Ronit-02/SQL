USE ORG;
SHOW TABLES;
SELECT * FROM project;

-- UNION
-- List out all the employees in the company
select * from dept1
UNION
select * from dept2;

-- List out all the employees in all departments who work as salesman
select * from dept1 WHERE role = 'salesman'
UNION
select * from dept2 WHERE role = 'salesman';

-- INTERSECT (emulate)
-- List out all the employees who works in both departments
select a.empID, b.role from dept1 as a
INNER JOIN dept2 as b ON a.empID = b.empID;

select dept1.* from dept1 INNER JOIN dept2 using(empID);

-- MINUS (emulate)
-- List out all the employees working in dept1 but not in dept2
select dept1.* , dept2.* from dept1
LEFT JOIN dept2 using(empID) 
WHERE dept2.empID is NULL;