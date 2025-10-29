CREATE DATABASE University;
use University;
Create Table Student_Info(
Student_ID Int Primary Key,
Student_Name Varchar(100),
Department Varchar(100),
Email_Id Varchar(100),
Course Varchar(100),
Location Varchar(100),
GPA Decimal(3,2)
);


Select * From Student_Info;

Insert into Student_Info  Values
(101, "Alen", "Computer Science", "alen@univ.edu", "Database Systems", "Science Block", 6.8),
(102, "Bob", "Mathematics", null, "Linear Algebra", "Main Building",  5.9),
(103, "Charls", "Physics", "charls@univ.edu", "Quantum Mechanics", "Science Block", 7.4),
(104, "David", "Computer Science", null, "Operating Systems", "Annex Building", 8.8),
(105, "Elsa", "Mathematics", "elsa@univ.edu", "Statistics", "Main Building", 6.2),
(106, "Franklin", "Biology", "franklin@univ.edu", "Genetics", "Science Block", 7.4),
(107, "Grace", "Chemistry", "grace@univ.ed", "OrganicChemistry", "Science Block", 8.9),
(108, "Harry", "Physics", null, "Thermodynamics", "Annex Building", 9.0);

Select distinct Department from Student_Info Where Location = "Main building";
select Student_ID from Student_Info where Email_ID is not null;
select Student_ID From Student_Info where Email_Id is null;
select Student_ID, Student_Name, Course, GPA from Student_Info where GPA between 5.0 and 8.0;
select Student_ID, Student_Name, Course, GPA from Student_Info where GPA not between 5.0 and 8.0;


