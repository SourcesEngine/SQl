CREATE DATABASE SchoolData;
USE SchoolData;

CREATE TABLE Students (
    student_number VARCHAR(20) PRIMARY KEY,
    firstname VARCHAR(50),
    lastname VARCHAR(50)
);

INSERT INTO Students (student_number, firstname, lastname)
VALUES ('035-20130-0205', 'Mairo', 'Eli');

CREATE TABLE Subjects (
    subject_id INT IDENTITY(1,1) PRIMARY KEY,
    subject_name VARCHAR(100)
);
INSERT INTO Subjects (subject_name)
VALUES ('Advanced Database Systems'),
       ('Management Information Systems'),
       ('Systems Analysis and Design');

CREATE TABLE AcademicTerm (
    term_id INT IDENTITY(1,1) PRIMARY KEY,
    year VARCHAR(10),
    term VARCHAR(10),
    program VARCHAR(50)
);

INSERT INTO AcademicTerm (year, term, program)
VALUES ('2016-2017', '2nd', 'BSIT');

CREATE TABLE Enrollment (
    enrollment_id INT IDENTITY(1,1) PRIMARY KEY,
    student_number VARCHAR(20),
    subject_id INT,
    year VARCHAR(10),
    term VARCHAR(10),
    program VARCHAR(50),
    FOREIGN KEY (student_number) REFERENCES Students(student_number),
    FOREIGN KEY (subject_id) REFERENCES Subjects(subject_id)
);
ALTER TABLE Enrollment
ADD term_id INT;

ALTER TABLE Enrollment
ADD FOREIGN KEY (term_id) REFERENCES AcademicTerm(term_id);


INSERT INTO Enrollment (student_number, subject_id, term_id)
VALUES 
('035-20130-0205', 1, 1),
('035-20130-0205', 2, 1),
('035-20130-0205', 3, 1);

select * from Enrollment;
select * from AcademicTerm;
select * from Students;
select * from Subjects;










