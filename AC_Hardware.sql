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
    ITEM_NAME VARCHAR(30),
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
('SUP1', 'Pasindu Dilshan', '0784617355', 'pasindu23@gmail.com', 'Thanamalwila, Monaragala'),
('SUP2', 'Navod Yasara', '0727619233', 'navo99@gmail.com', 'Wanduraba, Galle'),
('SUP3', 'Sineth Renuja', '0763573474', 'sineth77@gmail.com', 'Kumara Kanda, Hikkaduwa'),
('SUP4', 'Namal Kumara', '0778253415', 'namal89@gmail.com', 'Peradeniya, Kandy'),
('SUP5', 'Dulanga Thennakoon', '0757878922', 'dulatt44@gmail.com', 'Balana, Kegalle');

INSERT INTO CATEGORY
VALUES
('PVC', 'Pipe'),
('CE', 'Cement'),
('LAN', 'Iron cable'),
('PAN', 'Paint'),
('NUT', 'Nut and bolt'),
('BRI','Bricks'),
('SAN','Sand'),
('MET','Metal'),
('BUL','Bulb');
   
INSERT INTO ITEM_
VALUES
('CE1', '50kg cement', 'Tokyo Super', '3500', 'CE','5'),
('CE2', '50kg cement', 'Siam City Cement', '3400', 'CE','10'),
('CE3', '50kg cement', 'Ultratech Cement ', '3550', 'CE',null),
('CE4', '50kg cement', 'Sanstha Cement ', '3600', 'CE',null),
('CE5', '50kg cement', 'Nippon Cement ', '3400', 'CE',null),
('CE6', '50kg cement', 'Mahaweli Marine Cement ', '3300', 'CE',null),
('CE7', '50kg cement', 'Mascos Cement ', '3500', 'CE',null),
('CE8', '50kg cement', 'Arpico Cement ', '3550', 'CE','2'),
('CE9', '50kg cement', 'Lanwa Cement ', '3550', 'CE',null),
('PAN1', '1l paint', 'Asian Paints ', '2000', 'PAN',null),
('PAN2', '4l paint', 'Asian Paints ', '7000', 'PAN','5'),
('PAN3', '1l paint', 'Lankan Robbialac ', '2500', 'PAN',null),
('PAN4', '4l paint', 'Lankan Robbialac ', '7500', 'PAN','5'),
('PAN5', '1l paint', 'Dulux ', '2200', 'PAN',null),
('PAN6', '4l paint', 'Dulux ', '7200', 'PAN',null),
('PAN7', '1l paint', 'Nippon Paint', '2150', 'PAN',null),
('PAN8', '4l paint', 'Nippon Paint', '7150', 'PAN','5'),
('PAN9', '1l paint', 'Multilac', '2000', 'PAN',null),
('PAN10', '4l paint', 'Multilac', '7000', 'PAN',null),
('PAN11', '1l paint', 'Naturelac Paints', '2250', 'PAN',null),
('PAN12', '4l paint', 'Naturelac Paints', '7000', 'PAN','10'),
('PAN13', '1l paint', 'Kansal Paints', '2000', 'PAN',null),
('PAN14', '4l paint', 'Kansal Paints', '7000', 'PAN','5'),
('PAN15', '1l paint', 'Causeway Paints', '2000', 'PAN',null),
('PAN16', '4l paint', 'Causeway Paints', '7500', 'PAN',null),
('PAN17', '1l paint', 'Royal Paints', '2200', 'PAN',null),
('PAN18', '4l paint', 'Royal Paints', '7200', 'PAN',null),
('PAN19', '1l paint', 'Nimlac Paints', '2000', 'PAN','2'),
('PAN20', '4l paint', 'Nimlac Paints', '7500', 'PAN',null),
('PVC1', 'PE-20mm(1/2")-75mm(2 1/2") ', 'Anton', '800', 'PVC',null),
('PVC2', 'PE-20mm(1/2")-75mm(2 1/2") ', 'S-lon', '840', 'PVC',null),
('PVC3', 'PE-20mm(1/2")-75mm(2 1/2") ', 'National', '820', 'PVC',null),
('PVC4', '(PE/SS)20mm', 'Anton', '820', 'PVC',null),
('PVC5', '(PE/SS)20mm', 'S-lon', '810', 'PVC',null),
('PVC6', '(PE/SS)20mm', 'National', '800', 'PVC',null),
('PVC7', 'PE-90mm(3")-280mm(10")', 'Anton', '43000', 'PVC','10'),
('PVC8', 'PE-90mm(3")-280mm(10")', 'S-lon', '43600', 'PVC','5'),
('PVC9', 'PE-90mm(3")-280mm(10")', 'National', '43100', 'PVC',null),
('PVC10', '(PE/SS)25mm', 'Anton', '1400', 'PVC',null),
('PVC11', '(PE/SS)20mm', 'S-lon', '1450', 'PVC','1'),
('PVC12', '(PE/SS)20mm', 'National', '1500', 'PVC',null),
('LAN1', '1/1.13mm', 'Building wires', '35000', 'LAN',null),
('LAN2', '19/1.35mm-Single', 'Building wires', '37000', 'LAN',null),
('LAN3', '7/0.53mm-Twin', 'Building wires', '36700', 'LAN','8'),
('LAN4', '7/0.53mm-Single', 'Building wires', '22000', 'LAN',null),
('LAN5', '7/0.67mm-Eth', 'Building wires', '38000', 'LAN',null),
('LAN6', '7/0.67mm-Single', 'Building wires', '38000', 'LAN',null),
('LAN7', '7/0.85mm-Single', 'Building wires', '36500', 'LAN','10'),
('LAN8', '7/0.85mm-Twin', 'Building wires', '38500', 'LAN','5'),
('LAN9', '7/1.04mm-Twin', 'Building wires', '36500', 'LAN',null),
('LAN10', '7/1.70mm-Twin', 'Building wires', '38500', 'LAN','10'),
('LAN11', '7/0.53mm-S', 'Fire Zero', '14500', 'LAN',null),
('LAN12', '7/0.67mm-S', 'Fire Zero', '15500', 'LAN',null),
('LAN13', '7/0.67mm-T', 'Fire Zero', '16000', 'LAN','5'),
('LAN14', '7/0.85mm-S', 'Fire Zero', '17700', 'LAN',null),
('LAN15', '7/0.85mm-T', 'Fire Zero', '13500', 'LAN',null),
('LAN16', '7/1.04mm-S', 'Fire Zero', '15500', 'LAN','8'),
('LAN17', '7/1.04mm-T', 'Fire Zero', '16000', 'LAN','5'),
('LAN18', '7/1.35mm-S', 'Fire Zero', '14500', 'LAN',null),
('LAN19', '7/1.70mm-S', 'Fire Zero', '15500', 'LAN',null),
('LAN20', '10*0.50mm', 'Telephone cable', '14500', 'LAN',null),
('LAN21', '4*0.50mm', 'Telephone cable', '15500', 'LAN',null),
('LAN22', '16/0.20mm-3 core', 'Flexible chords', '14500', 'LAN',null),
('LAN23', '16/0.20mm-T.P', 'Flexible chords', '18000', 'LAN','10'),
('LAN24', '16/0.20mm-T.T', 'Flexible chords', '14500', 'LAN',null),
('LAN25', '24/0.20mm-2 core', 'Flexible chords', '12500', 'LAN',null),
('LAN26', '24/0.20mm-3 core', 'Flexible chords', '14500', 'LAN',null),
('LAN27', '24/0.20mm-4 core', 'Flexible chords', '16500', 'LAN',null),
('LAN28', '30/0.25mm-2 core', 'Flexible chords', '11500', 'LAN','8'),
('LAN29', '30/0.25mm-3 core', 'Flexible chords', '14500', 'LAN',null),
('LAN30', '30/0.25mm-4 core', 'Flexible chords', '17500', 'LAN',null),
('LAN31', '30/0.25mm-3 core', 'Flexible chords', '19500', 'LAN',null),
('BRI1', 'Bricks(Large)', 'Bricks', '40', 'BRI',null),
('BRI2', 'Engineering bricks(Small)', 'Bricks', '20', 'BRI',null),
('BRI3', 'Cement Bricks', 'Bricks', '105', 'BRI',null),
('SAN1', 'Purified Sand(Cube 1)', 'Sand', '15000', 'SAN',null),
('SAN2', 'River Sand Cube 4.5', 'Sand', '84000', 'SAN','15'),
('SAN3', 'River Sand Cube 1', 'Sand', '30000', 'SAN',null),
('MET1', 'Cube 1 metal', '3/4 Metal', '20000', 'MET',null),
('MET2', 'Cube 1 metal', '6"*9" Metal', '20000', 'MET','5'),
('MET3', 'Cube 1 metal', '6"*4" Metal', '20000', 'MET',null),
('MET4', 'Cube 1 metal', 'Metal Chips', '23000', 'MET','2'),
('MET5', 'Cube 1 metal', 'Metal Dust', '14000', 'MET',null),
('BUL1', '1 bulb', 'Panasonic', '1300', 'BUL',null),
('BUL2', '1 bulb', 'Samsung', '1200', 'BUL',null),
('BUL3', '1 bulb', 'Whirlpool', '1250', 'BUL','2'),
('BUL4', '1 bulb', 'Candy', '1000', 'BUL',null),
('BUL5', '1 bulb', 'Nokiya', '1500', 'BUL',null),
('BUL6', '1 bulb', 'Maxmo', '1300', 'BUL',null),
('BUL7', '1 bulb', 'TCL', '1400', 'BUL',null),
('NUT1', '1 kg nut & bolt', '5/8*11/2"', '1250', 'NUT',null),
('NUT2', '1 kg nut & bolt', '5/8*7"', '1250', 'NUT','2'),
('NUT3', '1 kg nut & bolt', '5/8*6"', '1250', 'NUT',null),
('NUT4', '1 kg nut & bolt', '5/8*5"', '1250', 'NUT',null);

INSERT INTO SALES 
VALUES
('10001','CHR1', '2023-04-23', '1580.0', '26300'),
('10002','CHR2', '2023-04-23', '110', '20200'),
('10003','CHR1', '2023-05-16', '525.0', '26150.0');

INSERT INTO BILL
VALUES
('10001', 'PAN1', '3000', '40','3'),
('10002', 'PVC2', '1100', '55.0','3'),
('10003', 'BUL4', '1000', '.00','5'),
('10003', 'CE3', '3550', '.00','3'),
('10003', 'CE1', '3500', '175.00','3');
    
INSERT INTO SUPPLY
VALUES
('CE1', 'SUP1', '500', '5000', '2023-01-05'),
('CE2', 'SUP2', '400', '4000', '2023-02-14'),
('CE3', 'SUP1', '600', '6000', '2023-01-06'),
('CE4', 'SUP2', '450', '4500', '2023-01-07'),
('CE5', 'SUP1', '550', '5500', '2023-01-08'),
('CE6', 'SUP1', '700', '7000', '2023-01-09'),
('CE7', 'SUP2', '400', '4000', '2023-01-10'),
('CE8', 'SUP5', '400', '4000', '2023-01-11'),
('CE9', 'SUP1', '200', '5000', '2023-01-12'),
('PAN1', 'SUP3', '500', '5000', '2023-01-13'),
('PAN2', 'SUP1', '300', '5000', '2023-01-14'),
('PAN3', 'SUP1', '550', '5000', '2023-01-15'),
('PAN4', 'SUP1', '500', '5000', '2023-01-16'),
('PAN5', 'SUP1', '100', '5000', '2023-01-17'),
('PAN6', 'SUP5', '400', '4000', '2023-01-18'),
('PAN7', 'SUP1', '500', '5000', '2023-01-19'),
('PAN8', 'SUP1', '500', '5000', '2023-01-20'),
('PAN9', 'SUP1', '500', '5000', '2023-01-21'),
('PAN10', 'SUP1', '500', '5000', '2023-01-22'),
('PAN11', 'SUP2', '400', '4000', '2023-01-23'),
('PAN12', 'SUP2', '400', '4000', '2023-01-24'),
('PAN13', 'SUP2', '700', '4000', '2023-01-25'),
('PAN14', 'SUP2', '400', '4000', '2023-01-26'),
('PAN15', 'SUP2', '400', '4000', '2023-01-27'),
('PAN16', 'SUP2', '420', '4000', '2023-01-28'),
('PAN17', 'SUP2', '400', '4000', '2023-01-29'),
('PAN18', 'SUP5', '460', '4000', '2023-01-30'),
('PAN19', 'SUP5', '400', '4000', '2023-01-31'),
('PAN20', 'SUP5', '200', '4000', '2023-02-01'),
('PVC1', 'SUP5', '400', '4000', '2023-02-02'),
('PVC2', 'SUP1', '350', '3000', '2023-03-04'),
('PVC3', 'SUP1', '350', '3000', '2023-03-04'),
('PVC4', 'SUP1', '350', '3000', '2023-03-04'),
('PVC5', 'SUP1', '350', '3000', '2023-03-04'),
('PVC6', 'SUP1', '350', '3000', '2023-03-04'),
('PVC7', 'SUP1', '350', '3000', '2023-03-04'),
('PVC8', 'SUP1', '350', '3000', '2023-03-04'),
('PVC9', 'SUP1', '350', '3000', '2023-03-04'),
('PVC10', 'SUP1', '350', '3000', '2023-03-04'),
('PVC11', 'SUP1', '350', '3000', '2023-03-04'),
('PVC12', 'SUP1', '350', '3000', '2023-03-04'),
('LAN1', 'SUP1', '350', '3000', '2023-03-04'),
('LAN2', 'SUP3', '350', '3000', '2023-04-04'),
('LAN3', 'SUP3', '350', '3000', '2023-04-04'),
('LAN4', 'SUP3', '350', '3000', '2023-04-04'),
('LAN5', 'SUP3', '350', '3000', '2023-04-04'),
('LAN6', 'SUP3', '350', '3000', '2023-04-04'),
('LAN7', 'SUP3', '350', '3000', '2023-04-04'),
('LAN8', 'SUP3', '150', '3000', '2023-04-04'),
('LAN9', 'SUP3', '150', '3000', '2023-04-04'),
('LAN10', 'SUP1', '350', '3000', '2023-04-04'),
('LAN11', 'SUP1', '650', '3000', '2023-04-04'),
('LAN12', 'SUP1', '350', '3000', '2023-04-04'),
('LAN13', 'SUP1', '350', '3000', '2023-04-04'),
('LAN14', 'SUP1', '350', '3000', '2023-05-04'),
('LAN15', 'SUP1', '150', '3000', '2023-05-04'),
('LAN16', 'SUP1', '350', '3000', '2023-05-04'),
('LAN17', 'SUP1', '350', '3000', '2023-05-04'),
('LAN18', 'SUP1', '50', '3000', '2023-05-04'),
('LAN19', 'SUP1', '350', '3000', '2023-05-04'),
('LAN20', 'SUP5', '350', '3000', '2023-05-04'),
('LAN21', 'SUP5', '380', '3000', '2023-05-04'),
('LAN22', 'SUP5', '350', '3000', '2023-05-04'),
('LAN23', 'SUP5', '350', '3000', '2023-05-04'),
('LAN24', 'SUP5', '350', '3000', '2023-05-04'),
('LAN25', 'SUP5', '350', '3000', '2023-05-04'),
('LAN26', 'SUP5', '350', '3000', '2023-05-04'),
('LAN27', 'SUP5', '350', '3000', '2023-05-04'),
('LAN28', 'SUP1', '350', '3000', '2023-05-04'),
('LAN29', 'SUP1', '350', '3000', '2023-05-04'),
('LAN30', 'SUP1', '350', '3500', '2023-05-04'),
('LAN31', 'SUP1', '350', '3500', '2023-05-04'),
('BRI1', 'SUP1', '350', '3050', '2023-05-04'),
('BRI2', 'SUP1', '350', '3600', '2023-05-04'),
('BRI3', 'SUP1', '350', '3600', '2023-05-04'),
('SAN1', 'SUP1', '350', '3800', '2023-05-04'),
('SAN2', 'SUP1', '350', '3000', '2023-05-04'),
('SAN3', 'SUP2', '350', '3000', '2023-05-04'),
('MET1', 'SUP2', '350', '3000', '2023-05-04'),
('MET2', 'SUP2', '350', '3000', '2023-05-04'),
('MET3', 'SUP2', '350', '3700', '2023-05-04'),
('MET4', 'SUP2', '350', '3700', '2023-05-04'),
('MET5', 'SUP2', '350', '3000', '2023-05-04'),
('BUL1', 'SUP2', '350', '3000', '2023-05-04'),
('BUL2', 'SUP2', '350', '3000', '2023-05-04'),
('BUL3', 'SUP1', '350', '3000', '2023-05-04'),
('BUL4', 'SUP2', '350', '3000', '2023-05-04'),
('BUL5', 'SUP2', '350', '3000', '2023-05-04'),
('BUL6', 'SUP1', '350', '3000', '2023-05-04'),
('BUL7', 'SUP1', '350', '3000', '2023-05-04'),
('NUT1', 'SUP1', '350', '3000', '2023-05-04'),
('NUT2', 'SUP1', '350', '3000', '2023-05-04'),
('NUT3', 'SUP5', '350', '3000', '2023-05-04'),
('NUT4', 'SUP5', '350', '3000', '2023-05-04');
