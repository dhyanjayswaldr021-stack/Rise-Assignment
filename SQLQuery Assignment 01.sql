
--Literal SELECT Statement Practice Problems


-- 1) Execute a literal SELECT statement that returns your name.

SELECT 'Dhyan Jayswal' AS Name

-- 2) Write the literal SELECT statement that evaluates the product of 7 and 4.

SELECT 7 * 4 AS Product


-- 3) Write the literal SELECT statement that takes the difference of 7 and 4 then multiplies that difference by 8.

SELECT (7 - 4) * 8 AS Result


-- 4) Write a literal SELECT statement that returns the phrase "Brewster's SQL Training Class".

SELECT 'Brewster''s SQL Training Class' AS TrainingClass

--5) Execute a literal SELECT statement that returns the phrase “Day 1 of Training” in one column and the result of 5*3 in another column.

SELECT 'Day 1 of Training' AS Training_Day, 5 * 3 AS Result;


-- Create Database
CREATE DATABASE CompanyDB

USE CompanyDB;

-- Create Table
CREATE TABLE Employees
(EmployeeID INT PRIMARY KEY, EmployeeName VARCHAR(50), Department VARCHAR(30), Salary INT)

-- Sample Data
INSERT INTO Employees
VALUES
(1,'Rahul','IT',50000),
(2,'Priya','HR',40000),
(3,'Amit','Cloud',70000),
(4,'Sneha','AI',80000),
(5,'Karan','Finance',18000);

-- 1) Insert a new employee record with all details provided directly.
INSERT INTO Employees
VALUES (6,'Nirmal','IT',60000);


-- 2) Add multiple new team members to the HR department at once.
INSERT INTO Employees
VALUES
(7,'Pooja','HR',35000),
(8,'Vikas','HR',38000);


-- 3) Register an employee who hasn't been assigned a salary yet.
INSERT INTO Employees
VALUES (9,'Arjun','Cloud',NULL);


-- 4) Update the salary to 85,000 for everyone working in the 'Cloud' department.
UPDATE Employees
SET Salary = 85000
WHERE Department = 'Cloud';


-- 5) Change both the department and salary for a specific employee by name.
UPDATE Employees
SET Department = 'AI',
    Salary = 90000
WHERE EmployeeName = 'Rahul';


-- 6) Give a flat 10% appraisal boost to employees working in the AI department.
UPDATE Employees
SET Salary = Salary + (Salary * 10 / 100)
WHERE Department = 'AI';


-- 7) Assign an initial entry-level salary of 30,000 to anyone whose salary is NULL.
UPDATE Employees
SET Salary = 30000
WHERE Salary IS NULL;


-- 8) Remove a specific employee from the system using their unique ID.
DELETE FROM Employees
WHERE EmployeeID = 5;


-- 9) Remove all records belonging to a department that has been completely shut down.
DELETE FROM Employees
WHERE Department = 'HR';


-- 10) Drop records of any employee earning less than 20,000 in the Finance division.
DELETE FROM Employees
WHERE Department = 'Finance'
AND Salary < 20000;

Select*From Employees
