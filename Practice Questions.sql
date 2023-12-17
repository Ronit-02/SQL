USE ORG;
SHOW TABLES;

-- Q-1. Write an SQL query to fetch “FIRST_NAME” from Worker table using the alias name as <WORKER_NAME>.
select first_name as worker_name from worker;

-- Q-2. Write an SQL query to fetch “FIRST_NAME” from Worker table in upper case.
select upper(first_name) from worker;

-- Q-3. Write an SQL query to fetch unique values of DEPARTMENT from Worker table.
select distinct department from worker;
select department from worker group by department;

-- Q-4. Write an SQL query to print the first three characters of FIRST_NAME from Worker table.
select substring(first_name, 1, 3) from worker;

-- Q-5. Write an SQL query to find the position of the alphabet (‘P’) in the first name column ‘Vipul’ from Worker table.
select INSTR(first_name, 'p') as MatchPosition from worker where first_name = 'Vipul';

-- Q-6. Write an SQL query to print the FIRST_NAME from Worker table after removing white spaces from the right side.
select RTRIM(first_name) from worker;

-- Q-7. Write an SQL query to print the DEPARTMENT from Worker table after removing white spaces from the left side.
select LTRIM(first_name) from worker;

-- Q-8. Write an SQL query that fetches the unique values of DEPARTMENT from Worker table and prints its length.
select distinct department, length(department) as length from worker;
select length(department) from worker group by department;

-- Q-9. Write an SQL query to print the FIRST_NAME from Worker table after replacing ‘a’ with ‘A’.
select replace(first_name, 'a', 'A') from worker;

-- Q-10. Write an SQL query to print the FIRST_NAME and LAST_NAME from Worker table into a single column COMPLETE_NAME.
-- A space char should separate them.
select concat(first_name, ' ', last_name) as COMPLETE_NAME from worker;

-- Q-11. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending.
select * from worker order by first_name asc;

-- Q-12. Write an SQL query to print all Worker details from the Worker table order by 
-- FIRST_NAME Ascending and DEPARTMENT Descending.
select * from worker order by first_name asc, department desc;

-- Q-13. Write an SQL query to print details for Workers with the first name as “Vipul” and “Satish” from Worker table.
select * from worker where first_name in ('Vipul', 'Satish');

-- Q-14. Write an SQL query to print details of workers excluding first names, “Vipul” and “Satish” from Worker table.
select * from worker where first_name not in ('Vipul', 'Satish');

-- Q-15. Write an SQL query to print details of Workers with DEPARTMENT name as “Admin*”.
select * from worker where department = 'Admin';

-- Q-16. Write an SQL query to print details of the Workers whose FIRST_NAME contains ‘a’.
select * from worker where first_name like '%a%';

-- Q-17. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘a’.
select * from worker where first_name like '%a';

-- Q-18. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘k’ and contains five alphabets.
select * from worker where first_name like '%k' and length(first_name) = 5;
select * from worker where first_name like '____k';

-- Q-19. Write an SQL query to print details of the Workers whose SALARY lies between 10000 and 40000.
select * from worker where salary between 10000 and 40000;

-- Q-20. Write an SQL query to print details of the Workers who have joined in Feb’2014.
select * from worker where joining_date like '2014-02-%';
select * from worker where YEAR(joining_date) = 2014 AND MONTH(joining_date) = 02;

-- Q-21. Write an SQL query to fetch the count of employees working in the department ‘Admin’.
select count(Worker_ID) from worker where department = 'Admin';

-- Q-22. Write an SQL query to fetch worker full names with salaries >= 5000 and <= 10000.
select concat(first_name, ' ', last_name), salary as name from worker where salary between 5000 and 10000;

-- Q-23. Write an SQL query to fetch the no. of workers for each department in the descending order.
select department, count(Worker_ID) as no_of_worker from worker 
group by department order by count(Worker_ID) desc;

-- Q-24. Write an SQL query to print details of the Workers who are also Managers.
select * from worker as w
inner join title as t on w.worker_id = t.ref_id where t.Worker_title = 'Manager';

select * from worker 
where worker_id in (select ref_id from title where worker_title = 'Manager');

-- Q-25. Write an SQL query to fetch number (more than 1) of same titles in the ORG of different types.


-- Q-26. Write an SQL query to show only odd rows from a table.
-- select * from worker where MOD (WORKER_ID, 2) != 0; 


-- Q-27. Write an SQL query to show only even rows from a table. 


-- Q-28. Write an SQL query to clone a new table from another table.


-- Q-29. Write an SQL query to fetch intersecting records of two tables.


-- Q-30. Write an SQL query to show records from one table that another table does not have.
-- MINUS


-- Q-31. Write an SQL query to show the current date and time.
-- DUAL


-- Q-32. Write an SQL query to show the top n (say 5) records of a table order by descending salary.


-- Q-33. Write an SQL query to determine the nth (say n=5) highest salary from a table.


-- Q-34. Write an SQL query to determine the 5th highest salary without using LIMIT keyword.

 
-- Q-35. Write an SQL query to fetch the list of employees with the same salary.


-- Q-36. Write an SQL query to show the second highest salary from a table using sub-query.


-- Q-37. Write an SQL query to show one row twice in results from a table.


-- Q-38. Write an SQL query to list worker_id who does not get bonus.


-- Q-39. Write an SQL query to fetch the first 50% records from a table.


-- Q-40. Write an SQL query to fetch the departments that have less than 4 people in it.


-- Q-41. Write an SQL query to show all departments along with the number of people in there.


-- Q-42. Write an SQL query to show the last record from a table.


-- Q-43. Write an SQL query to fetch the first row of a table.


-- Q-44. Write an SQL query to fetch the last five records from a table.


-- Q-45. Write an SQL query to print the name of employees having the highest salary in each department.


-- Q-46. Write an SQL query to fetch three max salaries from a table using co-related subquery

-- DRY RUN AFTER REVISING THE CORELATED SUBQUERY CONCEPT FROM LEC-9.


-- Q-47. Write an SQL query to fetch three min salaries from a table using co-related subquery


-- Q-48. Write an SQL query to fetch nth max salaries from a table.


-- Q-49. Write an SQL query to fetch departments along with the total salaries paid for each of them.


-- Q-50. Write an SQL query to fetch the names of workers who earn the highest salary.


-- Q-51. Write an SQL query to fetch even no of rows
-- Q-52. Write an SQL query to display last 50% of records 

