CREATE TABLE Account (
	ID INT PRIMARY KEY,
    Name VARCHAR(225) UNIQUE,
    -- DEFAULT
    Balance INT NOT NULL DEFAULT 0
    -- CONSTRAINT
    -- CONSTRAINT Acc_balance_check CHECK(Balance > 1000)
);

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