--Create a database named CompanyDB.
create database CompanyDB

--Use the CompanyDB database and create the Employee table with all the columns
mentioned above.

use companydb

create table EMPLOYEE
(EID INT,
FRISTNAME VARCHAR(20),
LASTNAME VARCHAR(20),
DEPARTMENT VARCHAR(20),
DEGISGNATION VARCHAR(20),
SALARY MONEY,
CITY VARCHAR(20),
GENDER CHAR(1),
JOININGDATE  DATE ,
AGE INT)

select * from employee

--Add a new column Email to the Employee table.
alter table employee
add email varchar(50)

--Modify the Email column to increase its size.
alter table employee
alter column email varchar(100)

--Rename the column City to Location.
sp_rename 'city' , 'location'
select*from employee


--Rename the table Employee to EmployeeDetails and then rename it back to
Employee.

sp_rename 'employee' ,'employeedetails'

sp_rename 'employeedetails' , 'employee'

--Drop the Email column from the Employee table.

alter table employee
drop column email

--Write a query to check the structure (columns and data types) of the Employee
table.
sp_help employee

--Make EmpID column the Primary Key of the Employee table.

insert into employee values
(101, 'keya','patel','AI','manager',50000, 'vadodara','f','2026-07-02',25)

alter table employee
alter column eid int not null

alter table employee
add constraint pk_employee primary key (EID)

-- Add a NOT NULL constraint on the FirstName column.

alter table employee
alter column  FRISTNAME VARCHAR(20) not null

--Add a UNIQUE constraint on the column to ensure no two employees have the
same email (create a new column Email and apply the constraint).

select *from employee

alter table employee
add column email varchar(20)

--Add a DEFAULT constraint on the Department column so that if no value is
provided, it should be set as 'General'.

alter table employee
add constraint department
default 'general' for department

--Add a CHECK constraint on the Salary column so that salary cannot be less than
10,000.

alter table employee
add constraint salary 
check (salary >=10000)

--Add a CHECK constraint on the Age column so that age must be between 18 and 60.
alter table employee
add constraint age 
check (age between 18 and 60)

select *from employee

--Remove the CHECK constraint applied on the Salary column.
ALTER TABLE Employee
DROP CONSTRAINT Salary

--Add a FOREIGN KEY unrelated simple self-constraint task: add a Manager_EmpID
column and apply a CHECK constraint so it cannot be equal to EmpID itself.

alter table employee
add manager_empid int

alter table employee
add constraint chk_manager
check( manager_empid <> eid)

--Insert 15 records into the Employee table with different departments, cities, and
salaries.

INSERT INTO Employee
(EID, FRISTNAME, LastName, Department, DEGISGNATION, Salary, location, Gender, JoiningDate, Age)
VALUES
(1, 'Amit', 'Sharma', 'IT', 'Manager', 55000, 'Delhi', 'M', '2022-01-15', 35),

(2, 'Priya', 'Patel', 'HR', 'Executive', 28000, 'Mumbai', 'F', '2023-03-10', 28),

(3, 'Rahul', 'Verma', 'Finance', 'Analyst', 32000, 'Pune', 'M', '2021-07-18', 31),

(4, 'Sneha', 'Joshi', 'Sales', 'Executive', 24000, 'Ahmedabad', 'F', '2024-02-20', 25),

(5, 'Arjun', 'Singh', 'IT', 'Executive', 30000, 'Delhi', 'M', '2022-08-12', 27),

(6, 'Neha', 'Gupta', 'HR', 'Manager', 60000, 'Jaipur', 'F', '2020-11-05', 40),

(7, 'Karan', 'Mehta', 'Finance', 'Executive', 26000, 'Surat', 'M', '2023-01-09', 26),

(8, 'Pooja', 'Kapoor', 'Sales', 'Analyst', 35000, 'Mumbai', 'F', '2021-06-25', 30),

(9, 'Rohit', 'Yadav', 'IT', 'Analyst', 42000, 'Pune', 'M', '2019-09-14', 33),

(10, 'Anjali', 'Shah', 'HR', 'Executive', 22000, 'Ahmedabad', 'F', '2024-04-01', 24),

(11, 'Vikas', 'Kumar', 'Finance', 'Manager', 65000, 'Delhi', 'M', '2018-12-18', 45),

(12, 'Meena', 'Nair', 'Sales', 'Executive', 27000, 'Jaipur', 'F', '2022-10-30', 29),

(13, 'Ajay', 'Desai', 'IT', 'Executive', 31000, 'Surat', 'M', '2023-07-15', 28),

(14, 'Komal', 'Patel', 'HR', 'Analyst', 38000, 'Mumbai', 'F', '2021-05-22', 32),

(15, 'Sanjay', 'Rao', 'Sales', 'Manager', 50000, 'Pune', 'M', '2020-03-11', 38)

SELECT *FROM employee

-- Insert a new employee record without specifying the Department (to check the DEFAULT constraint).

INSERT INTO Employee
(EID, FRISTNAME, LastName, DEGISGNATION, Salary, Location, Gender, JoiningDate, Age)
VALUES
(16, 'SURESH', 'Patel', 'Executive', 28000, 'Delhi', 'M', '2024-05-10', 24)

---Update the salary of all employees working in the IT department by increasing it by
10%.

Update employee
set salary = salary*1.10
where DEPARTMENT = 'IT'

--Update the Designation of an employee whose EmpID is 5 to 'Senior Executive'.

UPDATE EMPLOYEE
SET DEGISGNATION ='Senior Executive'
WHERE EID = 5

--Delete the record of an employee whose EmpID is 10.
DELETE FROM Employee
WHERE EID = 10

--Delete all employees whose Salary is less than 15,000.
DELETE FROM EMPLOYEE
WHERE SALARY < 15000

--Update the City of all employees from 'Mumbai' to 'Pune'.
UPDATE EMPLOYEE
SET LOCATION ='PUNE'
WHERE LOCATION ='MUMBAI'

SELECT*FROM employee

--Insert a record and intentionally leave FirstName blank to check if the NOT NULL constraint blocks it.

INSERT INTO EMPLOYEE(FRISTNAME, LASTNAME)
VALUES ('', 'Smith') ---IT GIVES ERROR COLUMN DOES NOT ALLOW NULLS

--Write a query to display all the records from the Employee table.
SELECT*FROM employee

--Write a query to display FirstName, LastName, and Salary of all employees.

SELECT FRISTNAME,LASTNAME,SALARY
FROM EMPLOYEE

--Write a query to display the details of employees working in the 'HR' department.
SELECT * FROM employee
WHERE DEPARTMENT ='HR'

--Write a query to display all distinct Department names from the table.
SELECT DISTINCT DEPARTMENT 
FROM EMPLOYEE

--Write a query to display the total number of employees in the table.
SELECT COUNT (*) AS TOTALEMPLOYEES
FROM EMPLOYEE

--Write a query to display FirstName and Salary and rename the Salary column asMonthlySalary using an alias.

SELECT  FRISTNAME , SALARY AS MONTHLYSALARY
FROM EMPLOYEE

--Write a query to display all employee details whose Gender is 'F'.
SELECT *
FROM employee
WHERE Gender = 'F'

--Write a query to display the top 5 highest paid employees.
SELECT TOP 5 *
FROM Employee
ORDER BY Salary DESC

--33.Display all employees whose Salary is greater than 30,000 (comparison operator).
select * from employee
where salary > 30000

--34.Display all employees whose Department is 'IT' AND Salary is greater than 25,000 (logical operator).
select *from employee
where department = 'IT'
and SALARY >25000

--35.Display all employees whose Department is 'HR' OR 'Finance'.
select *from employee
where department = 'HR'
OR department ='FINANCE'

--36.Display all employees whose Salary is BETWEEN 20,000 and 40,000.
select * from employee
where salary between 20000 and 40000

--37.Display all employees whose City IN ('Delhi', 'Mumbai', 'Pune').
select *from employee
where location in('Delhi', 'Mumbai', 'Pune')

--38.Display all employees whose FirstName LIKE starts with 'A'.
select *from employee
where fristname like 'A%'

--39.Display all employees whose FirstName LIKE ends with 'a'.
select *from employee
where fristname like '%A'

--40.Display all employees whose Department is NOT 'Sales' (NOT operator)
select *from employee
where not department ='sales'

--41.Display the total number of employees in each department.
select department,count(*)
from employee
group by department

--42.Display the average salary of employees department-wise.
select department,avg(salary)
from employee
group by department

--43.Display the maximum salary in each department.
select department , max(salary)
from employee
group by department

--44.Display the minimum salary city-wise.
select location,min(salary)
from employee
group by location

--45.Display the total salary paid, grouped by Designation.
select  DEGISGNATION ,sum (salary)
from employee
group by  DEGISGNATION

--46.Display departments having more than 3 employees.
select department , count (eid)
from employee 
group by department
having count (eid) > 3

--47.Display departments whose average salary is greater than 30,000.
select department , AVG(salary)
from employee
group by department
having avg (salary)>30000

--48.Display cities having a total employee count greater than 2.
select location ,count(eid)
from employee
group by location 
having count(eid) >2

--49.Display all employee records sorted by Salary in descending order.
select *
from employee
Order by salary desc

--50.Display all employee records sorted by Department (ascending) and then by Salary
(descending).
select *
from employee
Order by  department asc , salary desc
