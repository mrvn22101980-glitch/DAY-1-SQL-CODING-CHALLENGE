CREATE database hospital;
use hospital;
drop table Patients;
CREATE TABLE Patients (
    PatientID INT PRIMARY KEY,
    PatientName VARCHAR(50),
    Age INT,
    Gender VARCHAR(10),
    AdmissionDate DATE
);
ALTER TABLE Patients
ADD DoctorAssigned VARCHAR(50);
ALTER TABLE Patients modify column PatientName varchar(100);
ALTER TABLE Patients RENAME TO Patient_Info;
TRUNCATE TABLE Patient_Info;
DROP TABLE Patient_Info;