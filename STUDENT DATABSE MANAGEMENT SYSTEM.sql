-- Create a database
CREATE DATABASE StudentDB;
GO

-- Use the database
USE StudentDB;
GO

-------GO : It's used to separate batches of SQL statements in a script or query. 
-------When you execute SQL code in SQL Server Management Studio or through other means, 
-------GO is often used to indicate the end of one batch of statements and the beginning of the next.

-- Create a table to store student information
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateOfBirth DATE,
    Email VARCHAR(100),
    PhoneNumber VARCHAR(20)
);
GO

-- Insert some sample data into the Students table
INSERT INTO Students (StudentID, FirstName, LastName, DateOfBirth, Email, PhoneNumber)
VALUES 
    (1, 'John', 'Doe', '2000-05-15', 'john.doe@example.com', '123-456-7890'),
    (2, 'Jane', 'Smith', '1999-09-20', 'jane.smith@example.com', '987-654-3210'),
    (3, 'Michael', 'Johnson', '2001-03-10', 'michael.johnson@example.com', '555-123-4567');
GO

-- Create a table to store course information
CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100),
    CourseDescription VARCHAR(255)
);
GO

-- Insert some sample data into the Courses table
INSERT INTO Courses (CourseID, CourseName, CourseDescription)
VALUES 
    (101, 'Introduction to SQL', 'Basic SQL concepts and commands'),
    (102, 'Database Management Systems', 'Understanding database systems'),
    (103, 'Data Modeling', 'Designing efficient database structures');
GO

-- Create a table to store student-course enrollment information
CREATE TABLE Enrollment (
    StudentID INT,
    CourseID INT,
    EnrollmentDate DATE,
    PRIMARY KEY (StudentID, CourseID),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);
GO

-- Insert some sample data into the Enrollment table
INSERT INTO Enrollment (StudentID, CourseID, EnrollmentDate)
VALUES 
    (1, 101, '2024-01-10'),
    (1, 102, '2024-01-10'),
    (2, 101, '2024-01-10'),
    (3, 102, '2024-01-15'),
    (3, 103, '2024-01-15');
GO