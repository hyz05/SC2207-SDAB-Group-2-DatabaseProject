USE sdabg2
GO


-- Person
INSERT INTO Person VALUES ('S1234567A', N'Lim Wei Jie', '91234567', 'limwj@example.com');
INSERT INTO Person VALUES ('S7654321B', N'Tan Mei Ling', '98765432', 'tanml@example.com');

-- Model_Brand
INSERT INTO Model_Brand VALUES (N'Civic', N'Honda');
INSERT INTO Model_Brand VALUES (N'Altis', N'Toyota');

-- Vehicle_Decom
INSERT INTO Vehicle_Decom VALUES ('SGX1234A', 'IU00112233', 'S1234567A', N'Red', 2018, N'Civic', N'Car');
INSERT INTO Vehicle_Decom VALUES ('SGY5678B', 'IU99887766', 'S7654321B', N'Blue', 2020, N'Altis', N'Car');

-- Rules
INSERT INTO Rules VALUES (101, N'Speeding above limit', 150.00, N'Car');
INSERT INTO Rules VALUES (102, N'Illegal parking', 80.00, N'Car');

-- Offence
INSERT INTO Offence VALUES ('2025-10-01 08:30:00', 101, 'SGX1234A', N'Officer Lee');
INSERT INTO Offence VALUES ('2025-10-02 14:15:00', 102, 'SGY5678B', N'Officer Tan');

-- Postal
INSERT INTO Postal VALUES ('123456', N'Blk 123', N'Ang Mo Kio Ave 3');
INSERT INTO Postal VALUES ('654321', N'Blk 456', N'Tampines St 21');

-- HDB_Block_Decom
INSERT INTO HDB_Block_Decom VALUES (N'#05-123', '123456');
INSERT INTO HDB_Block_Decom VALUES (N'#12-456', '654321');

-- Resident
INSERT INTO Resident VALUES ('S1234567A', N'#05-123', '123456');
INSERT INTO Resident VALUES ('S7654321B', N'#12-456', '654321');

-- Carpark
INSERT INTO Carpark VALUES ('CP001', N'Yes', N'10pm to 7am');
INSERT INTO Carpark VALUES ('CP002', N'No', N'None');

-- Surface_Carpark
INSERT INTO Surface_Carpark VALUES ('CP001');

-- MSCP
INSERT INTO MSCP VALUES ('CP002', 5, 2.10);

-- LotType_ColourCode
INSERT INTO LotType_ColourCode VALUES ('W', 'White');
INSERT INTO LotType_ColourCode VALUES ('Y', 'Yellow');

-- Carpark_Lot_Decom
INSERT INTO Carpark_Lot_Decom VALUES (1, 'CP001', 'W');
INSERT INTO Carpark_Lot_Decom VALUES (2, 'CP002', 'Y');

-- Short_Term_Parking_Rate
INSERT INTO Short_Term_Parking_Rate VALUES (1, 0.60, '30 mins', 'Monday', 'Car');
INSERT INTO Short_Term_Parking_Rate VALUES (2, 1.20, '60 mins', 'Weekend', 'Car');

-- Parking_Transaction
INSERT INTO Parking_Transaction VALUES (1001, 'Monday', '2025-10-06 08:00:00', '2025-10-06 08:30:00', 30, 'CP001', 1, 'SGX1234A', 1);
INSERT INTO Parking_Transaction VALUES (1002, 'Sunday', '2025-10-05 10:00:00', '2025-10-05 11:00:00', 60, 'CP002', 2, 'SGY5678B', 2);

-- Season_Rate
INSERT INTO Season_Rate VALUES ('Car', 'Surface', 80.00);
INSERT INTO Season_Rate VALUES ('Car', 'MSCP', 110.00);

-- Season_Parking_Pass_Decom
INSERT INTO Season_Parking_Pass_Decom VALUES (2001, 'Car', 'Surface');
INSERT INTO Season_Parking_Pass_Decom VALUES (2002, 'Car', 'MSCP');

-- Purchases
INSERT INTO Purchases VALUES ('SGX1234A', 2001, 'CP001', '2025-09-01 09:00:00', '2025-09-01', '2025-12-01', 80.00);
INSERT INTO Purchases VALUES ('SGY5678B', 2002, 'CP002', '2025-09-15 10:00:00', '2025-09-15', '2025-12-15', 110.00);

-- Accesses
INSERT INTO Accesses VALUES ('CP001', '123456', '#05-123');
INSERT INTO Accesses VALUES ('CP002', '654321', '#12-456');