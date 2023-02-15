CREATE DATABASE AChardware;

CREATE TABLE Employee(
	EmployeeID CHAR(5) NOT NULL,
	Name VARCHAR(50) NOT NULL,
    UserName VARCHAR(10) NOT NULL,
    Password VARCHAR(15) NOT NULL,
    Role VARCHAR(15) NOT NULL,
    Address VARCHAR(60),
    MobileNo VARCHAR(10),
    PRIMARY KEY (UserName)
);

INSERT INTO Employee(EmployeeID,Name,UserName,Password,Role,Address,MobileNo)
VALUES ('EMP01','Shanuka Dilshan','shan','abcd','manager','No62/2, Maussawa, Pallegama, Atabage','0776638308'),
('EMP02','Janani Uthpala','janani','1234','cashier','127, Baththaramulla Rd, Kiribathgoda, Kelaniya','0728647224');

