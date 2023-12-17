USE ORG;
SHOW TABLES;
SELECT * FROM Worker;

CREATE TABLE employee (
	id INT NOT NULL PRIMARY KEY,
    fname VARCHAR(225),
    lname VARCHAR(225),
    age INT,
    emailID VARCHAR(225),
    phoneno INT,
    city VARCHAR(225)
);

INSERT INTO employee (id, fname, lname, age, emailID, phoneno, city) VALUES
	(1, 'Aman', 'Proto', 32, 'aman@gmail.com', 898, 'Delhi'),
    (2, 'Yagya', 'Naryan', 44, 'yagya@gmail.com', 222, 'Palam'),
    (3, 'Rahul', 'BD', 22, '@gmail.com', 444, 'Kolkata'),
    (4, 'Jatin', 'Hermit', 31, '@gmail.com', 666, 'Raipur'),
    (5, 'PK', 'Pandey', 21, '@gmail.com', 555, 'Jaipur');

SELECT * FROM employee;

CREATE TABLE client (
	id INT NOT NULL PRIMARY KEY,
    first_name VARCHAR(225),
    last_name VARCHAR(225),
    age INT,
    emailID VARCHAR(225),
    phoneno INT,
    city VARCHAR(225),
    empID INT,
    FOREIGN KEY(empID) REFERENCES employee(id)
);

INSERT INTO client (id, first_name, last_name, age, emailID, phoneno, city, empID) VALUES
	(1, 'Mac', 'Rogers', 47, 'mac@gmail.com', 333, 'Kolkata', 3),
    (2, 'Max', 'Pointer', 27, 'yagya@gmail.com', 222, 'Kolkata', 3),
    (3, 'Peter', 'Jain', 24, 'peter@gmail.com', 111, 'Delhi', 1),
    (4, 'Sushant', 'Aggarwal', 23, 'sushant@gmail.com', 45454, 'Hyderabad', 5),
    (5, 'Pratap', 'Singh', 36, 'pratap@gmail.com', 7776, 'Mumbai', 2);
    
SELECT * FROM client;

CREATE TABLE project (
	id INT NOT NULL PRIMARY KEY,
    empID INT,
    name VARCHAR(225),
    startdate DATETIME,
    clientID INT,
    FOREIGN KEY(empID) REFERENCES employee(id),
    FOREIGN KEY(clientID) REFERENCES client(id)
);

INSERT INTO project (id, empID, name, startdate, clientID) 
VALUES (1, 1, 'A', '2021-04-21', 3),
    (2, 2, 'B', '2021-03-12', 1),
    (3, 3, 'C', '2021-01-16', 5),
    (4, 4, 'D', '2021-04-27', 2),
    (5, 5, 'E', '2021-05-01', 4);

SELECT * FROM Project;
SHOW TABLES;