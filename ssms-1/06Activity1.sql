CREATE DATABASE Activity06_1;

use Activity06_1;

CREATE TABLE TBL_Flavors (
    ItemCode INT PRIMARY KEY,            
    ItemDesc VARCHAR(100),
    Price FLOAT CHECK (Price >= 65)     
);

ALTER TABLE TBL_Flavors DROP COLUMN ItemDesc;

SELECT * FROM TBL_Flavors;