USE ORG;
SELECT * FROM Employee;

-- SUB QUERIES
-- employees working in more than 1 project
select * from employee 
WHERE id IN (select empID from project group by empID having count(empID) > 1);

-- print details of the Workers who are also Managers
select * from worker 
where worker_id in (select ref_id from title where worker_title = 'Manager');

-- emp details having age > avg(age)
select * from employee WHERE age > ( select avg(age) from employee );

-- select max age person whose first name contains 'a' 
select * from employee WHERE age = ( select max(age) from ( select * from employee WHERE fname like '%a%' ) as temp );

-- Corelated subquery
-- find 3rd oldest employee
select * from employee as e1
where 2 = ( 
select count(e2.age) 
from employee as e2 
where e1.age > e2.age);

-- employee earning more than their manager (if given manager id column)
SELECT e1.name as Employee FROM Employee AS e1
WHERE e1.salary > (
    SELECT e2.salary FROM Employee AS e2
    WHERE id = e1.managerID
);