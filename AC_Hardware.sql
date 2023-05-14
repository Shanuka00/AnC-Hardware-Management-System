-- OOP Group project Database
-- Group - 04
-- Department of Industrial Management

CREATE DATABASE AC_Hardware;

USE AC_Hardware;

-- =======================
-- Create table structures
-- =======================

CREATE TABLE EMPLOYEE (
	E_ID VARCHAR(6) NOT NULL,
    E_NAME VARCHAR(50),
    USER_NAME VARCHAR(30),
    PASSWORD VARCHAR(20),
    TEL_NO VARCHAR(10),
    ROLE VARCHAR(20),
    ADD_ VARCHAR(50),
    PRIMARY KEY(E_ID)
    );
    
CREATE TABLE SUPPLIER (
	S_ID VARCHAR(5),
    S_NAME VARCHAR(50),
    TEL_NO VARCHAR(10),
    EMAIL VARCHAR(30),
    ADD_ VARCHAR(50),
    PRIMARY KEY(S_ID)
    );

CREATE TABLE CATEGORY (
	CAT_ID VARCHAR(20) NOT NULL,
    CAT_NAME VARCHAR(30),
    PRIMARY KEY(CAT_ID)
    ); 

CREATE TABLE ITEM_ (
	ITEM_ID VARCHAR(10) NOT NULL,
    ITEM_NAME VARCHAR(20),
    DESCRIPTION VARCHAR(30),
    SELLING_PRICE VARCHAR(20),
    CAT_ID VARCHAR(20),
	DISCOUNT VARCHAR(10),
    PRIMARY KEY(ITEM_ID),
    FOREIGN KEY(CAT_ID) REFERENCES CATEGORY(CAT_ID)
    );
    
CREATE TABLE SALES (
	B_ID VARCHAR(5) NOT NULL,
    E_ID VARCHAR(6) NOT NULL,
    DATE_ DATE,
    DISCOUNT VARCHAR(15),
    TOT_PRICE VARCHAR(15),
    PRIMARY KEY(B_ID),
    FOREIGN KEY(E_ID) REFERENCES EMPLOYEE(E_ID)
    );
    
CREATE TABLE BILL (
	B_ID VARCHAR(5) NOT NULL,
    ITEM_ID VARCHAR(10) NOT NULL,
    SELLING_PRICE VARCHAR(20),
    DISCOUNT VARCHAR(10),
    QUANTITY VARCHAR(10),
    FOREIGN KEY(B_ID) REFERENCES SALES(B_ID),
    FOREIGN KEY(ITEM_ID) REFERENCES ITEM_(ITEM_ID)
    ); 
    
CREATE TABLE SUPPLY (
    ITEM_ID VARCHAR(10) NOT NULL,
    S_ID VARCHAR(5) NOT NULL,
    AVAILABLE_QTY  VARCHAR(15),
    PUR_UNIT_PRICE VARCHAR(15),
    DATE DATE,
    PRIMARY KEY(ITEM_ID),
    FOREIGN KEY(ITEM_ID) REFERENCES ITEM_(ITEM_ID),
    FOREIGN KEY(S_ID) REFERENCES SUPPLIER(S_ID)
    );

-- ==============================
-- Dumping data to created tables
-- ==============================

INSERT INTO EMPLOYEE
VALUES
('MGR1', 'Shanuka Dilshan', 'shanuka', '1234','0776638308', 'Manager', 'Gampola, Kandy'),
('CHR1', 'Janani Uthpala', 'janani', '1234','0725625437', 'Cashier', 'Horana, Kaluthara'),
('CHR2', 'Chamil Yahampath', 'chamil119', '2345','0741518362', 'Cashier', 'Unawatuna, Galle'),
('CHR3', 'Achintha Alahakoon', 'alahako20002', '12345','0703212590', 'Cashier', 'Eheliyagoda, Rathnapura'),
('CHR4', 'Yasindu Rathnayake', 'rathnay20012', '23456','0705317792', 'Cashier', 'Karawanella, Ruwanwella');

INSERT INTO SUPPLIER
VALUES
('SUP1', 'Shanuka Dilshan', '0776638308', 'shanu20@gmail.com', 'Atabage, Kandy'),
('SUP2', 'Chamil Yahampath', '0783759681', 'chamil20@gmail.com', 'Ussangoda, Galle');

INSERT INTO CATEGORY
VALUES
('PVC', 'pipe'),
('CE', 'cement'),
('LAN', 'iron cable'),
('PAN', 'paint'),
('NUT', 'nut and bolt');
   
INSERT INTO ITEM_
VALUES
('PVC1', '0.5 inch pipe', 'slon', '1000', 'PVC','10'),
('PVC2', '1 inch pipe', 'slon', '1100', 'PVC',null),
('CE1', '50kg cement', 'tokio', '3500', 'CE','5'),
('CE2', '60kg cement', 'ultratech', '3600', 'CE','10'),
('PAN1', '1l paint', 'nipolac', '2150', 'PAN',null),
('PAN2', '4l paint', 'dulux', '2250', 'PAN','5');

INSERT INTO SALES 
VALUES
('10001','CHR1', '2023-04-23', '1580.0', '26300'),
('10002','CHR2', '2023-04-23', '110', '20200');

INSERT INTO BILL
VALUES
('10001', 'PAN1', '3000', '40','3'),
('10002', 'PVC2', '1100', '55.0','3');
    
INSERT INTO SUPPLY
VALUES
('CE1', 'SUP1', '350', '3000', '2023-01-04'),
('CE2', 'SUP2', '250', '3100', '2023-02-13'),
('PAN1', 'SUP1', '650', '2000', '2023-02-24'),
('PAN2', 'SUP2', '450', '4100', '2023-03-18'),
('PVC1', 'SUP1', '650', '2500', '2023-03-24'),
('PVC2', 'SUP2', '450', '3400', '2023-04-03');
