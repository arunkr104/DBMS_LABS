--Create a table Student
CREATE TABLE Student (
  RollNo INT ,
  Name VARCHAR(50),
  Dept VARCHAR(20),
  Age INT,
  Phone VARCHAR(15)
);



--Create a table Course
CREATE TABLE Course (
  CourseID INT ,
  CourseName VARCHAR(50),
  Credits INT
);


--Add a new column City in table Student
ALTER TABLE Student ADD City VARCHAR(20);

--Add a new column Semester in table Student
ALTER TABLE Student ADD Semester INT;

--Rename column Phone to MobileNo in table Student.
ALTER TABLE Student RENAME COLUMN Phone TO MobileNo;


--Delete (drop) the table Course                                  
DROP TABLE Course;


--Insert 5 student records into Student
INSERT INTO Student VALUES (23451, 'Rohan Kumar', 'CSE', 22, '7050162819', 'Supaul', 5);

INSERT INTO Student VALUES (23452, 'Saurabh Kumar', 'CSE', 25, '9915564581', 'Saharsa', 5);

INSERT INTO Student VALUES (23453, 'Kartik Kumar', 'CSE', 21, '9162668477', 'Supaul', 5);

INSERT INTO Student VALUES (23454, 'Sonu Kumar', 'CSE', 26, '9931142682', 'Madhepura', 6);

INSERT INTO Student VALUES (23455, 'Rahul Kumar', 'CSE', 25, '8229843150', 'Araria', 5);


--Display all records from Student.
SELECT * FROM Student;

--Display only RollNo and Name from Student
SELECT RollNo , Name FROM Student;

--Display all students from department "CSE"                                                                                                              
SELECT * FROM Student WHERE Dept='CSE';

--Display all students whose age is greater than 20.                                                                           
SELECT * FROM Student WHERE Age > 20 ;

--Update the department of RollNo = 23452 to "ECE".                              
UPDATE Student SET Dept = 'ECE' WHERE RollNo = 23452;

--Update the city of student "Kartik Kumar" to "Madhubani"
UPDATE Student SET City = 'Madhubani' WHERE Name = 'kartik Kumar';

--Increase age of all students by 1 year
UPDATE Student SET Age=Age+1;

--Delete record of student whose RollNo = 23455
DELETE FROM Student WHERE RollNo = 23455;

--Delete all records from Student (table should remain)
DELETE FROM Student;