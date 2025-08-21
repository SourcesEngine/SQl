USE Gallery;
CREATE TABLE Vendors (
    VendorID VARCHAR(10) PRIMARY KEY,
    VendorName VARCHAR(100),
    ContactNum VARCHAR(15)
);
CREATE TABLE Items (
    ItemID VARCHAR(10) PRIMARY KEY,
    ItemDesc VARCHAR(100),
    VendorID VARCHAR(10),
    FOREIGN KEY (VendorID) REFERENCES Vendors(VendorID)
);
INSERT INTO Vendors (VendorID, VendorName, ContactNum) VALUES
('V00001', 'Universal Robina Corporation', '8633-7631'),
('V00002', 'Liwayway Marketing Corporation', '8844-8441'),
('V00003', 'Monde Nissin', '7759-7500');
INSERT INTO Vendors (VendorID, VendorName, ContactNum) VALUES
('V00004', 'Cheese Ring', '7780-8080');

INSERT INTO Items (ItemID, ItemDesc, VendorID) VALUES
('P000101', 'Jack n Jill Platitos', 'V00001'),
('P000102', 'Jack n Jill Nova', 'V00001'),
('P000105', 'Oishi Prawn Crackers', 'V00001'),
('P030007', 'Regent Cheese Ring', 'V00004');

SELECT v.VendorName, i.ItemDesc
FROM Vendors v
INNER JOIN Items i ON v.VendorID = i.VendorID;

SELECT v.VendorName, i.ItemDesc
FROM Vendors v
LEFT JOIN Items i ON v.VendorID = i.VendorID;

SELECT v.VendorName, i.ItemDesc
FROM Vendors v
RIGHT JOIN Items i ON v.VendorID = i.VendorID;

SELECT v.VendorName, i.ItemDesc
FROM Vendors v
FULL OUTER JOIN Items i ON v.VendorID = i.VendorID;
