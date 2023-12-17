USE ORG;
SHOW TABLES;

-- INNER JOIN
-- Enlist all the employee id's, names along with the project allocated to them
SELECT e.id, e.fname, e.lname, p.id, p.name FROM employee AS e
INNER JOIN project AS p ON e.id = p.empID;

SELECT e.id, e.fname, e.lname, p.id, p.name FROM employee AS e,
project AS p WHERE e.id = p.empID;

-- Fetch out all the employee id's and their contact detail who have been working from
-- Jaipur with the clients name working in Hyderabad
SELECT e.id, e.emailID, e.phoneno, c.first_name, c.last_name FROM Employee as e
INNER JOIN client AS c ON e.id = c.empID WHERE e.city = 'Jaipur' AND c.city = 'Hyderabad';

-- Delete duplicate emails
DELETE p2 FROM Person p1
INNER JOIN Person p2 ON p1.Email = p2.Email where p1.id < p2.id;

-- LEFT JOIN 
-- Fetch out each project allocated to each employee
SELECT * from Employee as e
LEFT JOIN Project as p ON e.id = p.empID;

-- RIGHT JOIN
-- List out all the projects along with the employee's name and their respective allocated email ID
SELECT p.id, p.name, e.fname, e.lname, e.emailID FROM Employee as e
RIGHT JOIN Project as p ON e.id = p.empID;

-- CROSS JOIN
-- List out all the combinations possible for the employee's name and projects that can exists
SELECT p.id, p.name, e.fname, e.lname, e.emailID FROM Employee as e
CROSS JOIN Project as p;