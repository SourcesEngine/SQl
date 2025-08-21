-- 1. Create the StudentGrade table
CREATE TABLE StudentGrade (
    CourseCode VARCHAR(10) PRIMARY KEY,
    CourseTitle VARCHAR(100),
    Units INT,
    Grade DECIMAL(3,2)
);

-- 2. Insert the given data
INSERT INTO StudentGrade (CourseCode, CourseTitle, Units, Grade) VALUES
('COSC1003', 'Data Structures and Algorithms', 3, 1.50),
('GEDC1006', 'Readings in Philippine History', 3, 2.25),
('PHED1003', 'Physical Education', 3, 1.25),
('GEDC1014', 'Rizal’s Life and Works', 3, 1.50),
('COSC1007', 'Human-Computer Interaction', 3, 1.25),
('INTE1044', 'Object-Oriented Programming', 3, 1.75),
('COSC1001', 'Principles of Communication', 3, 2.25),
('COSC1008', 'Platform Technology', 3, 1.50);

-- 3a. Number of courses/subjects
SELECT COUNT(*) AS NumberOfCourses FROM StudentGrade;

-- 3b. Total units
SELECT SUM(Units) AS TotalUnits FROM StudentGrade;

-- 3c. Number of courses with grades higher than 2.00 (greater than 2.00)
SELECT COUNT(*) AS CoursesWithGradeHigherThan2
FROM StudentGrade
WHERE Grade > 2.00;

-- 3d. Number of courses with grades lower than 2.00 (less than 2.00)
SELECT COUNT(*) AS CoursesWithGradeLowerThan2
FROM StudentGrade
WHERE Grade < 2.00;

-- 3e. General weighted average
SELECT
    CAST(SUM(Units * Grade) AS DECIMAL(5,2)) / SUM(Units) AS GeneralWeightedAverage
FROM StudentGrade;
