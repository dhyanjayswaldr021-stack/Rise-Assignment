
        --SQL Assignment 2
        --Employee Table


-- Create Database
CREATE DATABASE CompanyDB;


USE CompanyDB;


-- Create Table
CREATE TABLE Employees
(
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(50),
    Department VARCHAR(30),
    Salary INT,
    Bonus INT,
    Experience INT,
    City VARCHAR(30)
);

-- Sample Data
INSERT INTO Employees
(EmployeeID, Name, Department, Salary, Bonus, Experience, City)
VALUES
(1, 'Dhyan',        'IT',      65000, 5000, 6, 'Vadodara'),
(2, 'Nirmal',       'HR',      48000, 3000, 4, 'Ahmedabad'),
(3, 'Bhanushali',   'Finance', 55000, 4000, 7, 'Mumbai'),
(4, 'Amit',         'IT',      72000, 6000, 8, 'Delhi'),
(5, 'Aarti',        'Sales',   45000, 2500, 3, 'Vadodara'),
(6, 'Riya',         'IT',      51000, 3500, 5, 'Surat');




--1. Write a query to display all employees whose salary is greater than 50,000.


SELECT *
FROM Employees
WHERE Salary > 50000;




--2. Retrieve employees who work in the IT department and have more than 5 years of experience.

SELECT *
FROM Employees
WHERE Department = 'IT'
AND Experience > 5;



--3. Write a query to display employees whose salary is between 45,000 and 60,000.

SELECT *
FROM Employees
WHERE Salary BETWEEN 45000 AND 60000;




--4. Display employees whose city is either Mumbai or Delhi.

SELECT *
FROM Employees
WHERE City IN ('Mumbai', 'Delhi');



--5. Write a query to display employee name along with their annual income.


SELECT
    Name,
    Salary,
    (Salary * 12) AS AnnualIncome
FROM Employees;



--6. Find employees whose name starts with the letter 'A'.

SELECT *
FROM Employees
WHERE Name LIKE 'A%';




--7. Find the highest salary among all employees.


SELECT MAX(Salary) AS HighestSalary
FROM Employees;




--8. Find the total bonus paid to employees in the IT department.


SELECT SUM(Bonus) AS TotalITBonus
FROM Employees
WHERE Department = 'IT';




--9. Display the minimum and maximum experience of employees.

SELECT
    MIN(Experience) AS MinimumExperience,
    MAX(Experience) AS MaximumExperience
FROM Employees;




--10. Count the number of employees in each department.

SELECT
    Department,
    COUNT(*) AS TotalEmployees
FROM Employees
GROUP BY Department;




--11. Find the total bonus paid to employees in the IT department.

SELECT SUM(Bonus) AS TotalITBonus
FROM Employees
WHERE Department = 'IT';



--12. Write an SQL statement to add a new column named Email of type VARCHAR(100) to the Employees table.


ALTER TABLE Employees
ADD Email VARCHAR(100);




--13. Write an SQL statement to modify the Salary column so that it becomes DECIMAL(10,2).


ALTER TABLE Employees
ALTER COLUMN Salary DECIMAL(10,2);




--14. Write an SQL statement to drop the Bonus column from the Employees table.


ALTER TABLE Employees
DROP COLUMN Bonus;