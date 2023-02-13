CREATE DATABASE AChardware;

CREATE TABLE user(
	FirstName VARCHAR(10) NOT NULL,
    LastName VARCHAR(10),
    UserName VARCHAR(10) NOT NULL,
    Password VARCHAR(15) NOT NULL,
    Address VARCHAR(60),
    MobileNo VARCHAR(10),
    Email VARCHAR(30),
    PRIMARY KEY (UserName)
);

INSERT INTO user(FirstName,LastName,UserName,Password,Address,MobileNo,Email)
VALUES ('Shanuka','Dilshan','shan017','abc123','No62/2, Maussawa, Pallegama, Atabage','0776638308','shanukadid@gmail.com'),
('Hasthika','Udathenna','hasiya054','dunna652','127, Baththaramulla Rd, Kiribathgoda, Kelaniya','0728647224','hasiyathougts@gmail.com');

SELECT * FROM user;