Create Database Emp;
Use Emp;

CREATE TABLE Employees (
    EmployeeID INT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50)
);

INSERT INTO Employees VALUES
(1, 'noel', 'koe'),
(2, 'hanNa', 'MONTANNA'),
(3, 'Christiano', 'Ronaldo');

Select employeeID,
CONCAT(UPPER(SUBSTRING(Firstname, 1, 1)), Lower(substring(Firstname, 2)), ' ' , UPPER(SUBSTRING(Lastname, 1, 1)), Lower(substring(Lastname, 2))) AS Fullname from employees;
CREATE TABLE Employee(
    EmployeeID INT,
    EmployeeName VARCHAR(50),
    HireDate DATE
);

INSERT INTO Employee VALUES
(1, 'Noel Koe', '2015-04-17'),
(2, 'Hanna Montanna', '2018-09-19'),
(3, 'Christiano Ronaldo', '2020-10-05');

Select EmployeeName, HireDate,
year(now())-year(HireDate) As Tenure_years,
Datediff(Now(),Hiredate) AS Daysworked from Employee;

CREATE TABLE Students (
    StudentID INT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50)
);

INSERT INTO Students VALUES
(1, 'Anushka', 'Sharma'),
(2, 'Telex', 'pandiyan'),
(3, 'Vinoth', 'Kumar');

DELIMITER //

CREATE FUNCTION FullName(FirstName VARCHAR(50), LastName VARCHAR(50))
RETURNS VARCHAR(100)
DETERMINISTIC
BEGIN
    RETURN CONCAT(FirstName, ' ', LastName);
END //
DELIMITER ;

SELECT StudentID, FullName(FirstName, LastName) AS FullName
FROM Students;
