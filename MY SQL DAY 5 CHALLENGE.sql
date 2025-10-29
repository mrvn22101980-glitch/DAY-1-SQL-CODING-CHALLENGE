Create Database Boston_University;
Use Boston_University;

create Table Students(
Student_id Int Primary Key,
Student_name Varchar(100),
Course_id Int);

Create Table Course(
Course_id Int Primary Key,
Course_Name Varchar(100));

Insert into Students values
(1, 'John Smith', 1001),
(2, 'Mary Johnson',1002),
(3, 'Alex Brown',1001),
(4, 'Sophia Davis',1005),
(5, 'Taylor Smith', 1003),
(6, ' Ricky Jose', 1004);

Insert into Course values
(1001, 'Computer'),
(1002, ' AI'),
(1003, ' Mathematics'),
(1004, ' Literature'),
(1005, ' Commerce');

Select s.student_id, c.Course_id from Students s
Inner join Course c on s.Course_id - c.Course_id;

Select s.student_id, c.Course_Name from Students s
Left join Course c on s.Course_id = c.Course_id;
