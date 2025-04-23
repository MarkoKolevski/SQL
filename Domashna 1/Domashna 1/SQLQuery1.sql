USE master

CREATE DATABASE SEDCACADEMY
GO

USE SEDCACADEMY

CREATE TABLE Students(
Id INT IDENTITY (1,1) NOT NULL,
FirstName NVARCHAR (30) NOT NULL,
DateOfBirth DATE NOT NULL,
EnrolledBirth BIT NOT NULL,
Gender NVARCHAR(6) NOT NULL,
NationalIdNumber BIGINT NOT NULL,
StudentCardNumber BIGINT NOT NULL 
)
GO

INSERT INTO dbo.Students(FirstName, DateOfBirth, EnrolledBirth, Gender, NationalIdNumber, StudentCardNumber)
VALUES ('Marko', '2005-21-10', 1, 'Male', 9234510741, 12346785489)
GO

INSERT INTO dbo.Students(FirstName, DateOfBirth, EnrolledBirth, Gender, NationalIdNumber, StudentCardNumber)
('Jovan', '2004-04-03', 1, 'Male',321345564321, 112355038)
GO

SELECT * FROM dbo.Students
CREATE TABLE Teachers (
Id INT IDENTITY (1,1) NOT NULL,
FirstName NVARCHAR (30) NOT NULL,
LastName NVARCHAR(50) NOT NULL,
DateOfBirth DATE NOT NULL,
AcademicRank NVARCHAR(30) NOT NULL,
HireDate DATE NOT NULL
)
GO

INSERT INTO dbo.Teachers(FirstName, LastName, DateOfBirth, AcademicRank, HireDate)
VALUES ('Jovana', 'Trajkovska','1975-02-10','Professor','2007-02-04'),
('Vlatko','Rajkovski', '1990-05-07','Director','2005-01-09'),
('Rade', 'Krstev', '1970-09-09','Teacher','2011-08-08')
GO

CREATE TABLE Gradess(
Id INT IDENTITY(1,1) NOT NULL,
StudentID INT NOT NULL,
CourseID INT NOT NULL,
TeacherID INT NOT NULL,
Grade DECIMAL NOT NULL,
Comment NVARCHAR(200) NOT NULL,
CreatedBase DATETIME DEFAULT GETDATE()
)

INSERT INTO dbo.Gradess (StudentID, CourseID, TeacherID, Grade, Comment)
VALUES (1,2,2,3.5, 'Dobar'),
(2,3,1,2.5,'Dovolen'),
(8,1,10,5.0,'Odlichen')
GO

SELECT * FROM dbo.Grades

CREATE TABLE Course(
Id INT IDENTITY(1,1) NOT NULL,
Name NVARCHAR(30) NOT NULL,
Credit INT NOT NULL,
AcademicYear NVARCHAR(9) NOT NULL,
Semester NVARCHAR(10) NOT NULL,
)
GO

INSERT INTO dbo.Course (Name,Credit,AcademicYear,Semester)
VALUES('Math', 6,'2024-2025','Spring'),
('Phisics', 5, '2024-2025','Winter'),
('Biology', 4,'2024-2025','Fall')
GO
SELECT * FROM dbo.Course

CREATE TABLE GradeDetails(
Id INT IDENTITY (1,1) NOT NULL,
GradeId INT NOT NULL,
AchievementTypeId INT NOT NULL,
AchievementPoints INT NOT NULL,
AchievementMaxPoint INT NOT NULL,
AchievementDate DATE NOT NULL,
)
GO

INSERT INTO dbo.GradeDetails (GradeId,AchievementTypeId,AchievementPoints,AchievementMaxPoint,AchievementDate)
VALUES(1, 1, 45, 50, '2025-05-09'),
(2, 2, 80, 100,'2025-04-21'),
(1, 3, 90, 100, '2025-08-30')
GO

SELECT * FROM dbo.GradeDetails

CREATE TABLE AchievementType(
Id INT IDENTITY(1,1) NOT NULL,
Name NVARCHAR(30) NOT NULL,
Description NVARCHAR (60) NOT NULL,
ParticipationRate DECIMAL NOT NULL
)
GO

INSERT INTO dbo.AchievementType(Name,Description,ParticipationRate)
VALUES('PROJECT', 'COMPLETED PROJECT ON DATABASE', 81.25),
('EXAM', 'FINAL WRITEN EXAM',96.05),
('ASSIGMENTS','INDIVIDUAL HOMEWORK ON SQL',67.32)
GO

SELECT * FROM dbo.AchievementType
GO
