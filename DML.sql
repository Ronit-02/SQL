USE SHOP;
SHOW TABLES;
SELECT * FROM Account;

-- INSERT
INSERT INTO Account (ID, Name, Balance) 
VALUES (1, 'Rohan', 10000);

INSERT INTO Account (ID, Name, Balance) 
VALUES (2, 'Bhuvan', 2000);

INSERT INTO Account (ID, Name) 
VALUES (4, 'Chirag');

SELECT * FROM Account;

-- ADD NEW COLUMN
ALTER TABLE Account ADD Interest INT NOT NULL DEFAULT 0;

-- MODIFY COLUMN
ALTER TABLE Account MODIFY Interest DOUBLE NOT NULL DEFAULT 0;

DESC Account;

-- RENAME COLUMN
ALTER TABLE Account CHANGE COLUMN Interest Saving_interest DOUBLE NOT NULL DEFAULT 0;

-- DELETE COLUMN
ALTER TABLE Account DROP COLUMN Saving_interest;

-- RENAME TABLE
ALTER TABLE Account RENAME TO Account_details;

SELECT * FROM Account_details;
SELECT * FROM Customer;
SELECT * FROM Order_details;

-- UPDATE 
UPDATE Customer SET Address = 'Mumbai', City = 'Kurla' WHERE ID = 33;

-- UPDATE MULTIPLE ROWS
SET SQL_SAFE_UPDATES = 0;
UPDATE Customer SET Pincode = 110012;

-- ON DELETE CASCADE
CREATE TABLE Order_details (
	Order_ID INT PRIMARY KEY,
    Delivery_date Date,
    Cust_ID INT,
    FOREIGN KEY(Cust_ID) REFERENCES Customer(ID) ON DELETE CASCADE
);

-- ON DELETE SET NULL
CREATE TABLE Order_details (
	Order_ID INT PRIMARY KEY,
    Delivery_date Date,
    Cust_ID INT,
    FOREIGN KEY(Cust_ID) REFERENCES Customer(ID) ON DELETE SET NULL
);

INSERT INTO Order_details (Order_ID, Delivery_date, Cust_ID) 
VALUES (1, '2019-03-11', 245),
(2, '2018-04-12', 1251);

DELETE FROM Customer WHERE ID = 245;

SELECT * FROM Customer;
SELECT * FROM Order_details;

-- REPLACE
REPLACE INTO Customer (ID, City, Address, Gender, CName)
	VALUES (1251, 'Colony', 'Nagar', 'F', 'Yashika');
    
REPLACE INTO Customer SET ID = 1255, CName = 'Ishita', City = 'Jalandhar';