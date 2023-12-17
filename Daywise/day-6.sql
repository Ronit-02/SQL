USE SHOP;
SHOW TABLES;
DROP TABLE Order_details;

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