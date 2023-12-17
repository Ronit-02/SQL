USE ORG;
SELECT * FROM employee;

-- CREATING VIEW
CREATE VIEW Custom_view AS SELECT fname, age FROM Employee;

-- VIEWING VIEW
SELECT * FROM Custom_view;

-- ALTERING VIEW
ALTER VIEW Custom_view AS SELECT fname, lname, age FROM employee;

-- DELETING VIEW
DROP VIEW IF EXISTS Custom_view;

