-- 1. Create the database
CREATE DATABASE Gallery;
GO

-- 2. Use the newly created database
USE Gallery;
GO

-- 3. Create the Users table
CREATE TABLE Users (
    UserID CHAR(3) PRIMARY KEY,
    Username VARCHAR(50),
    DateCreated DATE
);

-- 4. Insert data into Users
INSERT INTO Users (UserID, Username, DateCreated) VALUES
('001', 'sparsley0', '2019-02-19'),
('002', 'dsumshon1', '2018-12-24'),
('003', 'hpointing2', '2018-12-11'),
('004', 'smannagh3', '2018-08-05'),
('005', 'gstarsmore4', '2018-07-09'),
('006', 'dzuann5', '2019-01-09');

-- 5. Create the Pictures table
CREATE TABLE Pictures (
    PictureID INT PRIMARY KEY,
    FileName VARCHAR(100),
    UserID CHAR(3),
    DateCreated DATE,
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

-- 6. Insert data into Pictures
INSERT INTO Pictures (PictureID, FileName, UserID, DateCreated) VALUES
(1001, 'laptop.jpeg', '003', '2019-02-07'),
(1002, 'sti_orca.jpeg', '007', '2019-09-04'),  -- Note: '007' UserID does not exist in Users table
(1003, 'home.jpeg', '005', '2019-02-16'),
(1004, 'bsit.jpeg', '001', '2019-10-19');

-- 7. Perform the four types of JOINs to display only Username and FileName

-- 7a. INNER JOIN: shows matching UserIDs in both tables
SELECT U.Username, P.FileName
FROM Users U
INNER JOIN Pictures P ON U.UserID = P.UserID;

-- 7b. LEFT JOIN: shows all Users, and their Pictures if available
SELECT U.Username, P.FileName
FROM Users U
LEFT JOIN Pictures P ON U.UserID = P.UserID;

-- 7c. RIGHT JOIN: shows all Pictures, and their Users if available
SELECT U.Username, P.FileName
FROM Users U
RIGHT JOIN Pictures P ON U.UserID = P.UserID;

-- 7d. FULL OUTER JOIN: shows all Users and Pictures with or without matching UserID
SELECT U.Username, P.FileName
FROM Users U
FULL OUTER JOIN Pictures P ON U.UserID = P.UserID;
