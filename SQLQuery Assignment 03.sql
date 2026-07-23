--SQL Assignment-03

CREATE TABLE Employee
(
    EID INT PRIMARY KEY,
    Ename VARCHAR(50),
    Department VARCHAR(30),
    Salary INT
);


INSERT INTO Employee (EID, Ename, Department, Salary)
VALUES
(1, 'Rahul', 'IT', 60000),
(2, 'Priya', 'HR', 45000),
(3, 'Amit', 'IT', 70000),
(4, 'Neha', 'Finance', 80000),
(5, 'Karan', 'HR', 50000),
(6, 'Sneha', 'IT', 65000),
(7, 'Rohan', 'Finance', 90000),
(8, 'Pooja', 'Sales', 55000),
(9, 'Vikas', 'Sales', 60000),
(10, 'Anjali', 'Marketing', 75000);

--1. Write a query to display each Department and the total number of employees working in that department from the Employee table.

SELECT Department, COUNT(*) AS TotalEmployees
FROM Employee
GROUP BY Department;

--2. Write a query to find the Department, the highest salary (MAX), and the average salary (AVG) for each department.

SELECT Department,
       MAX(Salary) AS HighestSalary,
       AVG(Salary) AS AverageSalary
FROM Employee
GROUP BY Department;

--3. Write a query to count how many employees are in each Department.

SELECT Department,
       COUNT(*) AS EmployeeCount
FROM Employee
GROUP BY Department;

--4. Write a query to find the minimum salary in each Department.

SELECT Department,
       MIN(Salary) AS MinimumSalary
FROM Employee
GROUP BY Department;

--5. Write a query to show departments that have more than 2 employees.

SELECT Department,
       COUNT(*) AS TotalEmployees
FROM Employee
GROUP BY Department
HAVING COUNT(*) > 2;

--6. Write a query to show departments where the total salary payout is greater than 100,000.

SELECT Department,
       SUM(Salary) AS TotalSalary
FROM Employee
GROUP BY Department
HAVING SUM(Salary) > 100000;

--7. Write a query to find departments where the average salary is above 60,000.

SELECT Department,
       AVG(Salary) AS AverageSalary
FROM Employee
GROUP BY Department
HAVING AVG(Salary) > 60000;

--8. Write a query to show departments that have exactly 1 employee.

SELECT Department,
       COUNT(*) AS TotalEmployees
FROM Employee
GROUP BY Department
HAVING COUNT(*) = 1;

--9. Write a query to list all employees sorted by Salary from highest to lowest.

SELECT *
FROM Employee
ORDER BY Salary DESC;

--10. Write a query to list all employees sorted by Ename in alphabetical order.

SELECT *
FROM Employee
ORDER BY Ename ASC;

--11. Write a query to list all employees sorted by Department alphabetically, and then by Ename alphabetically.

SELECT *
FROM Employee
ORDER BY Department ASC, Ename ASC;













