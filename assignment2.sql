CREATE TABLE  Apartment(
Apt_ID CHAR(5) NOT NULL,
Apt_Name VARCHAR(25) NOT NULL,
Apt_Address VARCHAR(35) NOT NULL,
Mgr_ID CHAR(4) NOT NULL,
Num_Units int,
Maint_DT  date,
 Primary key (Apt_ID));

INSERT INTO Apartment 
    VALUES ("C0001", "Crescent Moon", "125 First St.", "M001", 22, date());

INSERT INTO Apartment 
    VALUES ("F0001", "Forest Glades", "9000 Robin Hood Land", "M0002", 50, date());

INSERT INTO Apartment 
    VALUES ("F0002", "Franklin Square", "4589 Bluefield St.", "M0003", 12, date());

INSERT INTO Apartment 
    VALUES ("G0001", "Greenbriar", "9099 Barkleley St.", "M0004", 20, date());

INSERT INTO Apartment
    VALUES ("H0001", "Hillcrest", "4567 Hillsboro Drive", "M0005", 35, date());

INSERT INTO Apartment 
    VALUES ("H0002", "Homewood", "8877 Forest View", "M0006", 10, date());

INSERT INTO Apartment 
    VALUES ("M0001", "Meadows", "1445 Fawn Ave", "M0007", 20, date());

SELECT * FROM Apartment 
ORDER BY Num_Units DESC;

SELECT Apt_ID, Apt_Name, Maint_DT
FROM Apartment;

SELECT  UnitNumber, Resider, RentalAmount
FROM Renters WHERE Bldg = "F0001";

SELECT  UnitNumber, Resider, RentalAmount
FROM Renters WHERE NumberOfResidents > 2;

SELECT  UnitNumber, Resider, RentalAmount
FROM Renters WHERE NumberOfResidents > 2 
AND LengthOfLease > 12;

SELECT UnitNumber, Resider,  RentalAmount, NumberOfResidents, 
RentalAmount / NumberOfResidents as ResidentCost
From Renters;

SELECT  avg(RentalAmount) as Average_RentalAmount
FROM Renters WHERE NumberOfResidents > 3;

SELECT  Renters.UnitNumber, Apartment.Apt_Name, Apartment.Apt_Address, Renters.Resider,
Renters.RentalAmount, Renters.NumberOfResidents
FROM Renters INNER JOIN Apartment  ON Apartment.Apt_ID = Renters.UnitNumber
WHERE Renters.RentalAmount > 700 ORDER BY RentalAmount DESC;