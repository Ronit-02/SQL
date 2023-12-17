CREATE DATABASE SHOP;
USE SHOP;

CREATE TABLE Customer (
	ID INT NOT NULL PRIMARY KEY,
    CName VARCHAR(225),
    Address VARCHAR(225),
    Gender CHAR(2),
    City VARCHAR(225),
	Pincode INT
);

INSERT INTO Customer (ID, CName, Address, Gender, City, Pincode) VALUES
	(1251, 'Ram Kumar', 'Lajpat Nagar', 'M', 'Delhi', 144002),
    (1300, 'Shayam Singh', 'Ashok Nagar', 'M', 'Jalandhar', 144001),
    (245, 'Neeraj Shukla', 'Ludhiana H.O', 'M', 'Ludhiana', 144003),
    (33, 'Siya Aroa', 'Punjabi Bagh', 'F', 'Delhi', 144004);
    
SELECT * FROM Customer;

CREATE TABLE Order_details (
	Order_ID INT PRIMARY KEY,
    Delivery_date Date,
    Cust_ID INT,
    FOREIGN KEY(Cust_ID) REFERENCES Customer(ID)
);

INSERT INTO Order_details (Order_ID, Delivery_date, Cust_ID) 
VALUES (1, '2019-03-11', 245),
(2, '2018-04-12', 1300);	

SELECT * FROM Order_details;

CREATE TABLE Account (
	ID INT PRIMARY KEY,
    Name VARCHAR(225) UNIQUE,
    -- DEFAULT
    Balance INT NOT NULL DEFAULT 0
    -- CONSTRAINT
    -- CONSTRAINT Acc_balance_check CHECK(Balance > 1000)
);

INSERT INTO Account (ID, Name, Balance) 
VALUES (1, 'Rohan', 10000),
	(2, 'Bhuvan', 2000);

INSERT INTO Account (ID, Name) 
VALUES (4, 'Chirag');