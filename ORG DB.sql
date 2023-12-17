CREATE DATABASE ORG;
USE ORG;

CREATE TABLE Worker (
	WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    FIRST_NAME CHAR(25),
    LAST_NAME CHAR(25),
    SALARY FLOAT,
    JOINING_DATE DATETIME,
    DEPARTMENT CHAR(25)
);

INSERT INTO Worker (WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
	(001, 'Monika', 'Arora', 10000, '14-02-20', 'HR'),
    (002, 'Rahul', 'Sharma', 20000, '24-04-22', 'Admin'),
    (003, 'Rameek', 'Gandhi', 30000, '03-11-20', 'Admin'),
    (004, 'Sunakshi', 'Ahuja', 15000, '15-05-21', 'Account'),
    (005, 'Vivek', 'Bharti', 50000, '14-06-11', 'Admin'),
    (006, 'Vipul', 'Diwan', 20000, '14-06-11', 'Account'),
    (007, 'Satish', 'Kumar', 75000, '14-01-20', 'Account'),
    (008, 'Geetika', 'Sharma', 90000, '14-04-11', 'Admin');
    
SELECT * FROM Worker;
    
CREATE TABLE Bonus (
	Ref_ID INT,
    Bonus_amt INT(20),
    Bonus_date DATETIME,
    FOREIGN KEY(Ref_ID) REFERENCES Worker(Worker_ID) ON DELETE CASCADE
);

INSERT INTO Bonus (Ref_ID, Bonus_amt, Bonus_date) VALUES
	(001, 5000, '16-02-20'),
    (003, 3000, '16-06-11'),
    (003, 4000, '16-02-20'),
    (001, 4500, '16-02-20'),
    (002, 3500, '16-06-11');

SELECT * FROM Bonus;

CREATE TABLE Title (
	Ref_ID INT,
    Worker_title CHAR(20),
    Affected_from DATETIME,
    FOREIGN KEY(Ref_ID) REFERENCES Worker(Worker_ID) ON DELETE CASCADE
);

INSERT INTO Title (Ref_ID, Worker_title, Affected_from) VALUES
	(001, 'Manager', '2016-02-20 00:00:00'),
    (002, 'Executive', '2016-06-11 00:00:00'),
    (008, 'Executive', '2016-06-11 00:00:00'),
    (005, 'Manager', '2016-06-11 00:00:00'),
    (004, 'Asst. Manager', '2016-06-11 00:00:00'),
    (007, 'Executive', '2016-06-11 00:00:00'),
    (006, 'Lead', '2016-06-11 00:00:00'),
    (003, 'Lead', '2016-06-11 00:00:00');
    
SELECT * FROM Title;
    
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
    (3, 'Rahul', 'BD', 22, 'rahul@gmail.com', 444, 'Kolkata'),
    (4, 'Jatin', 'Hermit', 31, 'jatin@gmail.com', 666, 'Raipur'),
    (5, 'PK', 'Pandey', 21, 'pk@gmail.com', 555, 'Jaipur');

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
    (4, 3, 'D', '2021-04-27', 2),
    (5, 5, 'E', '2021-05-01', 4);

SELECT * FROM Project;

CREATE TABLE dept1 (
	empID INT NOT NULL PRIMARY KEY,
    name VARCHAR(225),
    role VARCHAR(225)
);

INSERT INTO dept1 (empID, name, role) 
VALUES (1, 'A', 'engineer'),
    (2, 'B', 'salesman'),
    (3, 'C', 'manager'),
    (4, 'D', 'salesman'),
    (5, 'E', 'engineer');

SELECT * FROM dept1;

CREATE TABLE dept2 (
	empID INT NOT NULL PRIMARY KEY,
    name VARCHAR(225),
    role VARCHAR(225)
);

INSERT INTO dept2 (empID, name, role) 
VALUES (3, 'C', 'manager'),
    (6, 'F', 'marketing'),
    (7, 'G', 'salesman');

SELECT * FROM dept2;
SHOW TABLES;