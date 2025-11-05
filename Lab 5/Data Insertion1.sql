USE sdabg2
GO

-- Person
INSERT INTO Person VALUES ('S1234567A', N'Lim Wei Jie', '91234567', 'limwj@gmail.com');
INSERT INTO Person VALUES ('S7654321B', N'Tan Mei Ling', '98765432', 'tanml@yahoo.com.sg');
INSERT INTO Person VALUES ('S1122334C', N'Ng Jia Hao', '91112222', 'ngjh@gmail.com');
INSERT INTO Person VALUES ('S2233445D', N'Chua Li Wen', '92223333', 'chualw@yahoo.com.sg');
INSERT INTO Person VALUES ('S3344556E', N'Koh Jun Yi', '93334444', 'kohjy@gmail.com');
INSERT INTO Person VALUES ('S4455667F', N'Goh Xin Hui', '94445555', 'gohxh@yahoo.com.sg');
INSERT INTO Person VALUES ('S5566778G', N'Lau Wei Ming', '95556666', 'lauwm@gmail.com');
INSERT INTO Person VALUES ('S6677889H', N'Teo Hui Min', '96667777', 'teohm@yahoo.com.sg');
INSERT INTO Person VALUES ('S7788990I', N'Ong Zhi Hao', '97778888', 'ongzh@gmail.com');
INSERT INTO Person VALUES ('S8899001J', N'Wong Pei Yi', '98889999', 'wongpy@yahoo.com.sg');
INSERT INTO Person VALUES ('S9900112K', N'Tan Jia En', '90001111', 'tanje@gmail.com');
INSERT INTO Person VALUES ('S1011223L', N'Lee Jun Hao', '90112233', 'leejh@yahoo.com.sg');
INSERT INTO Person VALUES ('S2122334M', N'Sim Hui Fang', '91223344', 'simhf@gmail.com');
INSERT INTO Person VALUES ('S3233445N', N'Chew Zhi Ying', '92334455', 'chewzy@yahoo.com.sg');
INSERT INTO Person VALUES ('S4344556O', N'Yeo Kai Jie', '93445566', 'yeokj@gmail.com');
INSERT INTO Person VALUES ('S5455667P', N'Lim Pei Xuan', '94556677', 'limpx@yahoo.com.sg');
INSERT INTO Person VALUES ('S6566778Q', N'Tan Rui Qi', '95667788', 'tanrq@gmail.com');
INSERT INTO Person VALUES ('S6677001R', N'Ho Wei Kang', '96770011', 'howk@yahoo.com.sg');
INSERT INTO Person VALUES ('S7788112S', N'Lee Pei Shan', '97881122', 'leeps@gmail.com');
INSERT INTO Person VALUES ('S8899223T', N'Cheong Jia Ling', '98992233', 'cheongjl@yahoo.com.sg');
INSERT INTO Person VALUES ('S9900334U', N'Ng Zhi Hao', '90003344', 'ngzh@gmail.com');
INSERT INTO Person VALUES ('S1011445V', N'Tan Yi Xuan', '90114455', 'tanyx@yahoo.com.sg');
INSERT INTO Person VALUES ('S2122556W', N'Lim Jun Hui', '91225566', 'limjh@gmail.com');
INSERT INTO Person VALUES ('S3233667X', N'Goh Wei Ming', '92336677', 'gohwm@yahoo.com.sg');
INSERT INTO Person VALUES ('S4344778Y', N'Ong Pei Yi', '93447788', 'ongpy2@gmail.com');

-- Model_Brand
INSERT INTO Model_Brand VALUES (N'Civic', N'Honda');
INSERT INTO Model_Brand VALUES (N'Altis', N'Toyota');
INSERT INTO Model_Brand VALUES (N'Ninja', N'Kawasaki');
INSERT INTO Model_Brand VALUES (N'F-150', N'Ford');
INSERT INTO Model_Brand VALUES (N'R15', N'Yamaha');
INSERT INTO Model_Brand VALUES (N'Actros', N'Mercedes-Benz');

-- Vehicle_Decom
INSERT INTO Vehicle_Decom VALUES ('SGX1234A', 'IU00112233', 'S1234567A', N'Red', 2018, N'Civic', N'Car');
INSERT INTO Vehicle_Decom VALUES ('SGY5678B', 'IU99887766', 'S7654321B', N'Blue', 2020, N'Altis', N'Car');
INSERT INTO Vehicle_Decom VALUES ('SMR1001A', 'IU10101010', 'S1122334C', N'Black', 2021, N'Ninja', N'Motorcycle');
INSERT INTO Vehicle_Decom VALUES ('SMC2002B', 'IU20202020', 'S2233445D', N'Red', 2020, N'Civic', N'Car');
INSERT INTO Vehicle_Decom VALUES ('SML3003C', 'IU30303030', 'S3344556E', N'White', 2019, N'F-150', N'Commercial Vehicle');
INSERT INTO Vehicle_Decom VALUES ('SMR4004D', 'IU40404040', 'S4455667F', N'Blue', 2022, N'R15', N'Motorcycle');
INSERT INTO Vehicle_Decom VALUES ('SML5005E', 'IU50505050', 'S5566778G', N'Silver', 2018, N'Actros', N'Commercial Vehicle');
INSERT INTO Vehicle_Decom VALUES ('SMC6006F', 'IU60606060', 'S6677889H', N'Green', 2017, N'Civic', N'Car');
INSERT INTO Vehicle_Decom VALUES ('SMR7007G', 'IU70707070', 'S7788990I', N'Yellow', 2021, N'Ninja', N'Motorcycle');
INSERT INTO Vehicle_Decom VALUES ('SML8008H', 'IU80808080', 'S8899001J', N'Grey', 2019, N'F-150', N'Commercial Vehicle');
INSERT INTO Vehicle_Decom VALUES ('SMC9009I', 'IU90909090', 'S9900112K', N'White', 2020, N'Altis', N'Car');
INSERT INTO Vehicle_Decom VALUES ('SMR1010J', 'IU10101011', 'S1011223L', N'Black', 2022, N'R15', N'Motorcycle');
INSERT INTO Vehicle_Decom VALUES ('SML1111K', 'IU11111111', 'S2122334M', N'Silver', 2018, N'Actros', N'Commercial Vehicle');
INSERT INTO Vehicle_Decom VALUES ('SMC1212L', 'IU12121212', 'S3233445N', N'Blue', 2019, N'Civic', N'Car');
INSERT INTO Vehicle_Decom VALUES ('SMR1313M', 'IU13131313', 'S4344556O', N'Red', 2021, N'Ninja', N'Motorcycle');
INSERT INTO Vehicle_Decom VALUES ('SML1414N', 'IU14141414', 'S5455667P', N'Green', 2020, N'F-150', N'Commercial Vehicle');
INSERT INTO Vehicle_Decom VALUES ('SMC1515O', 'IU15151515', 'S6566778Q', N'Blue', 2020, N'Altis', N'Car');
INSERT INTO Vehicle_Decom VALUES ('SMR1616P', 'IU16161616', 'S6677001R', N'Yellow', 2021, N'R15', N'Motorcycle');
INSERT INTO Vehicle_Decom VALUES ('SML1717Q', 'IU17171717', 'S7788112S', N'Grey', 2019, N'Actros', N'Commercial Vehicle');
INSERT INTO Vehicle_Decom VALUES ('SMC1818R', 'IU18181818', 'S8899223T', N'White', 2018, N'Civic', N'Car');
INSERT INTO Vehicle_Decom VALUES ('SMR1919S', 'IU19191919', 'S9900334U', N'Black', 2022, N'Ninja', N'Motorcycle');
INSERT INTO Vehicle_Decom VALUES ('SML2020T', 'IU20202021', 'S1011445V', N'Red', 2017, N'F-150', N'Commercial Vehicle');
INSERT INTO Vehicle_Decom VALUES ('SMC2121U', 'IU21212121', 'S2122556W', N'Silver', 2021, N'Altis', N'Car');
INSERT INTO Vehicle_Decom VALUES ('SMR2222V', 'IU22222222', 'S3233667X', N'Blue', 2020, N'R15', N'Motorcycle');
INSERT INTO Vehicle_Decom VALUES ('SML2323W', 'IU23232323', 'S4344778Y', N'White', 2018, N'Actros', N'Commercial Vehicle');


-- Rules
INSERT INTO Rules VALUES (3,   N'Parking other than in a parking lot', 35.00, N'Motorcycle');
INSERT INTO Rules VALUES (3,   N'Parking other than in a parking lot', 70.00, N'Car');
INSERT INTO Rules VALUES (3,   N'Parking other than in a parking lot', 100.00, N'Commercial Vehicle');
INSERT INTO Rules VALUES (4,   N'Using a parking place for unauthorised purpose', 80.00, N'Motorcycle');
INSERT INTO Rules VALUES (4,   N'Using a parking place for unauthorised purpose', 80.00, N'Car');
INSERT INTO Rules VALUES (4,   N'Using a parking place for unauthorised purpose', 100.00, N'Commercial Vehicle');
INSERT INTO Rules VALUES (10,  N'Parking in a parking place not designated for the use thereof', 35.00, N'Motorcycle');
INSERT INTO Rules VALUES (10,  N'Parking in a parking place not designated for the use thereof', 70.00, N'Car');
INSERT INTO Rules VALUES (10,  N'Parking in a parking place not designated for the use thereof', 100.00, N'Commercial Vehicle');
INSERT INTO Rules VALUES (11,  N'Parking against traffic flow',35.00, N'Motorcycle');
INSERT INTO Rules VALUES (11,  N'Parking against traffic flow',70.00, N'Car');
INSERT INTO Rules VALUES (11,  N'Parking against traffic flow',100.00, N'Commercial Vehicle');
INSERT INTO Rules VALUES (12,  N'Failure to obey signs exhibited in the parking place',35.00, N'Motorcycle');
INSERT INTO Rules VALUES (12,  N'Failure to obey signs exhibited in the parking place',70.00, N'Car');
INSERT INTO Rules VALUES (12,  N'Failure to obey signs exhibited in the parking place', 100.00, N'Commercial Vehicle');
INSERT INTO Rules VALUES (13,  N'Parking beyond the boundaries of the parking lot thereby causing obstruction', 35.00, N'Motorcycle');
INSERT INTO Rules VALUES (13,  N'Parking beyond the boundaries of the parking lot thereby causing obstruction', 70.00, N'Car');
INSERT INTO Rules VALUES (13,  N'Parking beyond the boundaries of the parking lot thereby causing obstruction',100.00, N'Commercial Vehicle');
INSERT INTO Rules VALUES (16,  N'Failure to obey lawful directions given by Parking Wardens',35.00, N'Motorcycle');
INSERT INTO Rules VALUES (16,  N'Failure to obey lawful directions given by Parking Wardens',70.00, N'Car');
INSERT INTO Rules VALUES (16,  N'Failure to obey lawful directions given by Parking Wardens',100.00, N'Commercial Vehicle');
INSERT INTO Rules VALUES (18,  N'Parking in a season parking place without a valid season parking ticket',35.00, N'Motorcycle');
INSERT INTO Rules VALUES (18,  N'Parking in a season parking place without a valid season parking ticket',70.00, N'Car');
INSERT INTO Rules VALUES (18,  N'Parking in a season parking place without a valid season parking ticket',100.00, N'Commercial Vehicle');
INSERT INTO Rules VALUES (29,  N'Unauthorised parking in a reserved parking lot or accessible lot',35.00, N'Motorcycle');
INSERT INTO Rules VALUES (29,  N'Unauthorised parking in a reserved parking lot or accessible lot',70.00, N'Car');
INSERT INTO Rules VALUES (29,  N'Unauthorised parking in a reserved parking lot or accessible lot',200.00, N'Commercial Vehicle');

-- Postal
INSERT INTO Postal VALUES ('123456', N'Blk 123', N'Ang Mo Kio Ave 3');
INSERT INTO Postal VALUES ('654321', N'Blk 456', N'Tampines St 21');
INSERT INTO Postal VALUES ('111111', N'Blk 101', N'Bedok North Ave 2');
INSERT INTO Postal VALUES ('222222', N'Blk 205', N'Clementi Ave 5');
INSERT INTO Postal VALUES ('333333', N'Blk 32', N'Bukit Batok St 22');
INSERT INTO Postal VALUES ('444444', N'Blk 78', N'Yishun Ring Rd');
INSERT INTO Postal VALUES ('555555', N'Blk 48', N'Jurong West Ave 1');
INSERT INTO Postal VALUES ('666666', N'Blk 19', N'Bishan St 11');
INSERT INTO Postal VALUES ('777777', N'Blk 10', N'Toa Payoh Lor 6');
INSERT INTO Postal VALUES ('888888', N'Blk 67', N'Woodlands Ave 4');
INSERT INTO Postal VALUES ('999999', N'Blk 50', N'Hougang Ave 3');
INSERT INTO Postal VALUES ('112233', N'Blk 90', N'Pasir Ris Dr 1');
INSERT INTO Postal VALUES ('223344', N'Blk 73', N'Punggol Walk');
INSERT INTO Postal VALUES ('334455', N'Blk 102', N'Bukit Panjang Rd');
INSERT INTO Postal VALUES ('445566', N'Blk 88', N'Sengkang East Way');
INSERT INTO Postal VALUES ('556677', N'Blk 16', N'Tampines Ave 8');
INSERT INTO Postal VALUES ('667788', N'Blk 23', N'Choa Chu Kang St 52');
INSERT INTO Postal VALUES ('778899', N'Blk 7', N'Ang Mo Kio St 11');
INSERT INTO Postal VALUES ('889900', N'Blk 66', N'Yishun Ave 3');
INSERT INTO Postal VALUES ('990011', N'Blk 15', N'Jurong East St 21');
INSERT INTO Postal VALUES ('101122', N'Blk 22', N'Pasir Ris St 12');
INSERT INTO Postal VALUES ('112235', N'Blk 77', N'Bukit Timah Rd');
INSERT INTO Postal VALUES ('123344', N'Blk 80', N'Tampines St 51');
INSERT INTO Postal VALUES ('134455', N'Blk 95', N'Bedok South Ave 3');
INSERT INTO Postal VALUES ('145566', N'Blk 30', N'Clementi St 14');

-- HDB_Block_Decom
INSERT INTO HDB_Block_Decom VALUES (N'#05-123', '123456');
INSERT INTO HDB_Block_Decom VALUES (N'#12-456', '654321');
INSERT INTO HDB_Block_Decom VALUES (N'#03-101', '111111');
INSERT INTO HDB_Block_Decom VALUES (N'#08-205', '222222');
INSERT INTO HDB_Block_Decom VALUES (N'#11-032', '333333');
INSERT INTO HDB_Block_Decom VALUES (N'#07-078', '444444');
INSERT INTO HDB_Block_Decom VALUES (N'#02-048', '555555');
INSERT INTO HDB_Block_Decom VALUES (N'#12-019', '666666');
INSERT INTO HDB_Block_Decom VALUES (N'#09-010', '777777');
INSERT INTO HDB_Block_Decom VALUES (N'#04-067', '888888');
INSERT INTO HDB_Block_Decom VALUES (N'#10-050', '999999');
INSERT INTO HDB_Block_Decom VALUES (N'#05-090', '112233');
INSERT INTO HDB_Block_Decom VALUES (N'#06-073', '223344');
INSERT INTO HDB_Block_Decom VALUES (N'#13-102', '334455');
INSERT INTO HDB_Block_Decom VALUES (N'#03-088', '445566');
INSERT INTO HDB_Block_Decom VALUES (N'#08-016', '556677');
INSERT INTO HDB_Block_Decom VALUES (N'#09-023', '667788');
INSERT INTO HDB_Block_Decom VALUES (N'#01-001', '778899');
INSERT INTO HDB_Block_Decom VALUES (N'#02-002', '889900');
INSERT INTO HDB_Block_Decom VALUES (N'#03-003', '990011');
INSERT INTO HDB_Block_Decom VALUES (N'#04-004', '101122');
INSERT INTO HDB_Block_Decom VALUES (N'#05-005', '112233');
INSERT INTO HDB_Block_Decom VALUES (N'#06-006', '123344');
INSERT INTO HDB_Block_Decom VALUES (N'#07-007', '134455');
INSERT INTO HDB_Block_Decom VALUES (N'#08-008', '145566');

-- Resident
INSERT INTO Resident VALUES ('S1234567A', N'#05-123', '123456');
INSERT INTO Resident VALUES ('S7654321B', N'#12-456', '654321');
INSERT INTO Resident VALUES ('S1122334C', N'#03-101', '111111');
INSERT INTO Resident VALUES ('S2233445D', N'#08-205', '222222');
INSERT INTO Resident VALUES ('S3344556E', N'#11-032', '333333');
INSERT INTO Resident VALUES ('S4455667F', N'#07-078', '444444');
INSERT INTO Resident VALUES ('S5566778G', N'#02-048', '555555');
INSERT INTO Resident VALUES ('S6677889H', N'#12-019', '666666');
INSERT INTO Resident VALUES ('S7788990I', N'#09-010', '777777');
INSERT INTO Resident VALUES ('S8899001J', N'#04-067', '888888');
INSERT INTO Resident VALUES ('S9900112K', N'#10-050', '999999');
INSERT INTO Resident VALUES ('S1011223L', N'#05-090', '112233');
INSERT INTO Resident VALUES ('S2122334M', N'#06-073', '223344');
INSERT INTO Resident VALUES ('S3233445N', N'#13-102', '334455');
INSERT INTO Resident VALUES ('S4344556O', N'#03-088', '445566');
INSERT INTO Resident VALUES ('S5455667P', N'#08-016', '556677');
INSERT INTO Resident VALUES ('S6566778Q', N'#09-023', '667788');
INSERT INTO Resident VALUES ('S6677001R', N'#01-001', '778899');
INSERT INTO Resident VALUES ('S7788112S', N'#02-002', '889900');
INSERT INTO Resident VALUES ('S8899223T', N'#03-003', '990011');
INSERT INTO Resident VALUES ('S9900334U', N'#04-004', '101122');
INSERT INTO Resident VALUES ('S1011445V', N'#05-005', '112233');
INSERT INTO Resident VALUES ('S2122556W', N'#06-006', '123344');
INSERT INTO Resident VALUES ('S3233667X', N'#07-007', '134455');
INSERT INTO Resident VALUES ('S4344778Y', N'#08-008', '145566');


-- Carpark
INSERT INTO Carpark VALUES ('CP001', N'Yes', N'10pm to 7am');
INSERT INTO Carpark VALUES ('CP003', N'Yes', N'24 Hours');
INSERT INTO Carpark VALUES ('CP005', N'Yes', N'7am to 10pm');
INSERT INTO Carpark VALUES ('CP007', N'Yes', N'6am to 11pm');
INSERT INTO Carpark VALUES ('CP009', N'Yes', N'24 Hours');
INSERT INTO Carpark VALUES ('CP011', N'Yes', N'8am to 10pm');
INSERT INTO Carpark VALUES ('CP002', N'No', N'None');
INSERT INTO Carpark VALUES ('CP004', N'No', N'None');
INSERT INTO Carpark VALUES ('CP006', N'No', N'None');
INSERT INTO Carpark VALUES ('CP008', N'No', N'None');
INSERT INTO Carpark VALUES ('CP010', N'No', N'None');
INSERT INTO Carpark VALUES ('CP012', N'No', N'None');


-- Surface_Carpark
INSERT INTO Surface_Carpark VALUES ('CP001');
INSERT INTO Surface_Carpark VALUES ('CP003');
INSERT INTO Surface_Carpark VALUES ('CP005');
INSERT INTO Surface_Carpark VALUES ('CP007');
INSERT INTO Surface_Carpark VALUES ('CP009');
INSERT INTO Surface_Carpark VALUES ('CP011');

-- MSCP
INSERT INTO MSCP VALUES ('CP002', 5, 2.10);
INSERT INTO MSCP VALUES ('CP004', 6, 2.50);
INSERT INTO MSCP VALUES ('CP006', 4, 1.80);
INSERT INTO MSCP VALUES ('CP008', 5, 2.00);
INSERT INTO MSCP VALUES ('CP010', 7, 2.30);
INSERT INTO MSCP VALUES ('CP012', 6, 2.10);

-- LotType_ColourCode
INSERT INTO LotType_ColourCode VALUES ('W', 'White');
INSERT INTO LotType_ColourCode VALUES ('B', 'Bi-coloured');
INSERT INTO LotType_ColourCode VALUES ('R', 'Red');         
INSERT INTO LotType_ColourCode VALUES ('Y', 'Yellow');         

-- Carpark_Lot_Decom
INSERT INTO Carpark_Lot_Decom VALUES (1,  'CP001', 'W');
INSERT INTO Carpark_Lot_Decom VALUES (2,  'CP003', 'Y');
INSERT INTO Carpark_Lot_Decom VALUES (3,  'CP005', 'W');
INSERT INTO Carpark_Lot_Decom VALUES (4,  'CP007', 'R');
INSERT INTO Carpark_Lot_Decom VALUES (5,  'CP009', 'W');
INSERT INTO Carpark_Lot_Decom VALUES (6,  'CP011', 'B');
INSERT INTO Carpark_Lot_Decom VALUES (13, 'CP002', 'W');
INSERT INTO Carpark_Lot_Decom VALUES (14, 'CP004', 'Y');
INSERT INTO Carpark_Lot_Decom VALUES (15, 'CP006', 'B');
INSERT INTO Carpark_Lot_Decom VALUES (16, 'CP008', 'W');
INSERT INTO Carpark_Lot_Decom VALUES (17, 'CP010', 'Y');
INSERT INTO Carpark_Lot_Decom VALUES (18, 'CP012', 'W');

INSERT INTO Carpark_Lot_Decom VALUES (26, 'CP001', 'W');
INSERT INTO Carpark_Lot_Decom VALUES (27, 'CP001', 'B');
INSERT INTO Carpark_Lot_Decom VALUES (28, 'CP001', 'W');
INSERT INTO Carpark_Lot_Decom VALUES (29, 'CP001', 'W');
INSERT INTO Carpark_Lot_Decom VALUES (30, 'CP001', 'Y');
INSERT INTO Carpark_Lot_Decom VALUES (31, 'CP001', 'W');
INSERT INTO Carpark_Lot_Decom VALUES (32, 'CP001', 'R');
INSERT INTO Carpark_Lot_Decom VALUES (33, 'CP001', 'W');
INSERT INTO Carpark_Lot_Decom VALUES (34, 'CP001', 'R');

INSERT INTO Carpark_Lot_Decom VALUES (35, 'CP002', 'W');
INSERT INTO Carpark_Lot_Decom VALUES (36, 'CP002', 'R');
INSERT INTO Carpark_Lot_Decom VALUES (37, 'CP002', 'W');
INSERT INTO Carpark_Lot_Decom VALUES (38, 'CP002', 'Y');
INSERT INTO Carpark_Lot_Decom VALUES (39, 'CP002', 'R');
INSERT INTO Carpark_Lot_Decom VALUES (40, 'CP002', 'W');
INSERT INTO Carpark_Lot_Decom VALUES (41, 'CP002', 'W');
INSERT INTO Carpark_Lot_Decom VALUES (42, 'CP002', 'B');
INSERT INTO Carpark_Lot_Decom VALUES (43, 'CP002', 'R');

INSERT INTO Carpark_Lot_Decom VALUES (44, 'CP003', 'R');
INSERT INTO Carpark_Lot_Decom VALUES (45, 'CP003', 'W');
INSERT INTO Carpark_Lot_Decom VALUES (46, 'CP003', 'B');
INSERT INTO Carpark_Lot_Decom VALUES (47, 'CP003', 'Y');
INSERT INTO Carpark_Lot_Decom VALUES (48, 'CP003', 'W');
INSERT INTO Carpark_Lot_Decom VALUES (49, 'CP003', 'R');
INSERT INTO Carpark_Lot_Decom VALUES (50, 'CP003', 'W');
INSERT INTO Carpark_Lot_Decom VALUES (51, 'CP003', 'W');
INSERT INTO Carpark_Lot_Decom VALUES (52, 'CP003', 'R');

INSERT INTO Carpark_Lot_Decom VALUES (53, 'CP004', 'R');
INSERT INTO Carpark_Lot_Decom VALUES (54, 'CP004', 'W');
INSERT INTO Carpark_Lot_Decom VALUES (55, 'CP004', 'B');
INSERT INTO Carpark_Lot_Decom VALUES (56, 'CP004', 'Y');
INSERT INTO Carpark_Lot_Decom VALUES (57, 'CP004', 'R');
INSERT INTO Carpark_Lot_Decom VALUES (58, 'CP004', 'W');
INSERT INTO Carpark_Lot_Decom VALUES (59, 'CP004', 'W');
INSERT INTO Carpark_Lot_Decom VALUES (60, 'CP004', 'W');
INSERT INTO Carpark_Lot_Decom VALUES (61, 'CP004', 'R');


-- Short_Term_Parking_Rate
-- Surface Carparks
INSERT INTO Short_Term_Parking_Rate VALUES (1, 0.60, '30 mins', 'Weekday', 'Car');
INSERT INTO Short_Term_Parking_Rate VALUES (2, 0.80, '60 mins', 'Weekday', 'Car');
INSERT INTO Short_Term_Parking_Rate VALUES (3, 0.30, '30 mins', 'Weekday', 'Motorcycle');
INSERT INTO Short_Term_Parking_Rate VALUES (4, 0.50, '60 mins', 'Weekday', 'Motorcycle');
INSERT INTO Short_Term_Parking_Rate VALUES (5, 1.00, '30 mins', 'Weekday', 'Commercial Vehicle');
INSERT INTO Short_Term_Parking_Rate VALUES (6, 1.80, '60 mins', 'Weekday', 'Commercial Vehicle');
INSERT INTO Short_Term_Parking_Rate VALUES (7, 0.60, '30 mins', 'Weekend', 'Car');
INSERT INTO Short_Term_Parking_Rate VALUES (8, 1.20, '60 mins', 'Weekend', 'Car');
INSERT INTO Short_Term_Parking_Rate VALUES (9, 0.30, '30 mins', 'Weekend', 'Motorcycle');
INSERT INTO Short_Term_Parking_Rate VALUES (10, 0.50, '60 mins', 'Weekend', 'Motorcycle');
INSERT INTO Short_Term_Parking_Rate VALUES (11, 1.00, '30 mins', 'Weekend', 'Commercial Vehicle');
INSERT INTO Short_Term_Parking_Rate VALUES (12, 1.80, '60 mins', 'Weekend', 'Commercial Vehicle');
-- MSCP Carparks
INSERT INTO Short_Term_Parking_Rate VALUES (13, 0.80, '30 mins', 'Weekday', 'Car');
INSERT INTO Short_Term_Parking_Rate VALUES (14, 1.50, '60 mins', 'Weekday', 'Car');
INSERT INTO Short_Term_Parking_Rate VALUES (15, 0.40, '30 mins', 'Weekday', 'Motorcycle');
INSERT INTO Short_Term_Parking_Rate VALUES (16, 0.70, '60 mins', 'Weekday', 'Motorcycle');
INSERT INTO Short_Term_Parking_Rate VALUES (17, 1.50, '30 mins', 'Weekday', 'Commercial Vehicle');
INSERT INTO Short_Term_Parking_Rate VALUES (18, 2.80, '60 mins', 'Weekday', 'Commercial Vehicle');
INSERT INTO Short_Term_Parking_Rate VALUES (19, 0.80, '30 mins', 'Weekend', 'Car');
INSERT INTO Short_Term_Parking_Rate VALUES (20, 1.50, '60 mins', 'Weekend', 'Car');
INSERT INTO Short_Term_Parking_Rate VALUES (21, 0.40, '30 mins', 'Weekend', 'Motorcycle');
INSERT INTO Short_Term_Parking_Rate VALUES (22, 0.70, '60 mins', 'Weekend', 'Motorcycle');
INSERT INTO Short_Term_Parking_Rate VALUES (23, 1.50, '30 mins', 'Weekend', 'Commercial Vehicle');
INSERT INTO Short_Term_Parking_Rate VALUES (24, 2.80, '60 mins', 'Weekend', 'Commercial Vehicle');
INSERT INTO Short_Term_Parking_Rate VALUES (25, 2.00, '60 mins', 'Public Holiday', 'Car');

-- Parking_Transaction
-- Surface Carparks (12 transactions)
INSERT INTO Parking_Transaction VALUES (1001, 'Monday', '2025-10-06 08:00:00', '2025-10-06 08:30:00', 30, 'CP001', 1, 'SGX1234A', 1);
INSERT INTO Parking_Transaction VALUES (1002, 'Tuesday', '2025-10-07 09:00:00', '2025-10-07 10:00:00', 60, 'CP003', 2, 'SMR1001A', 4);
INSERT INTO Parking_Transaction VALUES (1003, 'Wednesday', '2025-10-08 10:00:00', '2025-10-08 11:45:00', 105, 'CP005', 3, 'SML3003C', 5);
INSERT INTO Parking_Transaction VALUES (1004, 'Thursday', '2025-10-09 12:00:00', '2025-10-09 13:30:00', 90, 'CP007', 4, 'SMR4004D', 4);
INSERT INTO Parking_Transaction VALUES (1005, 'Friday', '2025-10-10 08:30:00', '2025-10-10 10:45:00', 135, 'CP009', 5, 'SGY5678B', 2);
INSERT INTO Parking_Transaction VALUES (1006, 'Friday', '2025-10-10 09:15:00', '2025-10-10 11:30:00', 135, 'CP011', 6, 'SML5005E', 6);
INSERT INTO Parking_Transaction VALUES (1007, 'Saturday', '2025-10-11 09:00:00', '2025-10-11 09:30:00', 30, 'CP001', 1, 'SMC6006F', 7);
INSERT INTO Parking_Transaction VALUES (1008, 'Saturday', '2025-10-11 10:00:00', '2025-10-11 12:15:00', 135, 'CP003', 2, 'SMR7007G', 10);
INSERT INTO Parking_Transaction VALUES (1009, 'Sunday', '2025-10-12 08:30:00', '2025-10-12 10:00:00', 90, 'CP005', 3, 'SML8008H', 11);
INSERT INTO Parking_Transaction VALUES (1010, 'Sunday', '2025-10-12 09:00:00', '2025-10-12 09:50:00', 50, 'CP007', 4, 'SMC9009I', 8);
INSERT INTO Parking_Transaction VALUES (1011, 'Saturday', '2025-10-11 08:15:00', '2025-10-11 10:30:00', 135, 'CP009', 5, 'SMR1313M', 10);
INSERT INTO Parking_Transaction VALUES (1012, 'Sunday', '2025-10-12 09:00:00', '2025-10-12 10:00:00', 60, 'CP011', 6, 'SML1414N', 12);

--- MSCP Carparks (13 transactions)
INSERT INTO Parking_Transaction VALUES (1013, 'Monday', '2025-10-13 08:00:00', '2025-10-13 08:45:00', 45, 'CP002', 13, 'SGX1234A', 14);
INSERT INTO Parking_Transaction VALUES (1014, 'Tuesday', '2025-10-14 09:00:00', '2025-10-14 09:30:00', 30, 'CP004', 14, 'SMR1001A', 16);
INSERT INTO Parking_Transaction VALUES (1015, 'Wednesday', '2025-10-15 08:30:00', '2025-10-15 09:00:00', 30, 'CP006', 15, 'SML3003C', 17);
INSERT INTO Parking_Transaction VALUES (1016, 'Thursday', '2025-10-16 09:00:00', '2025-10-16 09:40:00', 40, 'CP008', 16, 'SMR4004D', 16);
INSERT INTO Parking_Transaction VALUES (1017, 'Friday', '2025-10-17 07:30:00', '2025-10-17 08:15:00', 45, 'CP010', 17, 'SGY5678B', 14);
INSERT INTO Parking_Transaction VALUES (1018, 'Friday', '2025-10-17 08:00:00', '2025-10-17 10:20:00', 140, 'CP012', 18, 'SML5005E', 18);
INSERT INTO Parking_Transaction VALUES (1019, 'Saturday', '2025-10-18 09:15:00', '2025-10-18 09:45:00', 30, 'CP002', 13, 'SMC6006F', 19);
INSERT INTO Parking_Transaction VALUES (1020, 'Saturday', '2025-10-18 10:00:00', '2025-10-18 12:30:00', 150, 'CP004', 14, 'SMR7007G', 22);
INSERT INTO Parking_Transaction VALUES (1021, 'Sunday', '2025-10-19 08:30:00', '2025-10-19 10:15:00', 105, 'CP006', 15, 'SML8008H', 23);
INSERT INTO Parking_Transaction VALUES (1022, 'Sunday', '2025-10-19 09:00:00', '2025-10-19 09:50:00', 50, 'CP008', 16, 'SMC9009I', 20);
INSERT INTO Parking_Transaction VALUES (1023, 'Saturday', '2025-10-18 08:00:00', '2025-10-18 09:50:00', 110, 'CP010', 17, 'SMR1313M', 22);
INSERT INTO Parking_Transaction VALUES (1024, 'Sunday', '2025-10-19 09:15:00', '2025-10-19 11:45:00', 150, 'CP012', 18, 'SML1414N', 24);
INSERT INTO Parking_Transaction VALUES (1025, 'Public Holiday', '2025-12-25 08:30:00', '2025-12-25 10:45:00', 135, 'CP002', 13, 'SGX1234A', 25);

-- Offence
INSERT INTO Offence (date_time, rule_no, vehicle_type, VRN, carpark_id, officer_name) VALUES
('2025-10-06 08:00:00', 3, N'Car', 'SGX1234A', 'CP001', N'Officer Lee'),
('2025-10-07 09:00:00', 4, N'Motorcycle', 'SMR1001A', 'CP003', N'Officer Tan'),
('2025-10-08 10:00:00', 10, N'Commercial Vehicle', 'SML3003C', 'CP005', N'Officer Lim'),
('2025-10-09 12:00:00', 12, N'Motorcycle', 'SMR4004D', 'CP007', N'Officer Wong'),
('2025-10-10 08:30:00', 13, N'Car', 'SGY5678B', 'CP009', N'Officer Lee'),
('2025-10-10 09:15:00', 16, N'Commercial Vehicle', 'SML5005E', 'CP011', N'Officer Tan'),
('2025-10-11 09:00:00', 18, N'Car', 'SMC6006F', 'CP001', N'Officer Lim'),
('2025-10-11 10:00:00', 29, N'Motorcycle', 'SMR7007G', 'CP003', N'Officer Lee'),
('2025-10-12 08:30:00', 3, N'Commercial Vehicle', 'SML8008H', 'CP005', N'Officer Tan'),
('2025-10-12 09:00:00', 4, N'Car', 'SMC9009I', 'CP007', N'Officer Wong'),
('2025-10-12 09:00:00', 10, N'Commercial Vehicle', 'SML1414N', 'CP011', N'Officer Lee'),
('2025-10-13 08:00:00', 12, N'Car', 'SGX1234A', 'CP002', N'Officer Tan'),
('2025-10-14 09:00:00', 13, N'Motorcycle', 'SMR1001A', 'CP004', N'Officer Lim'),
('2025-10-15 08:30:00', 16, N'Commercial Vehicle', 'SML3003C', 'CP006', N'Officer Lee'),
('2025-10-16 09:00:00', 18, N'Car', 'SMR4004D', 'CP008', N'Officer Tan'),
('2025-10-17 07:30:00', 29, N'Motorcycle', 'SGY5678B', 'CP010', N'Officer Wong'),
('2025-10-17 08:00:00', 3, N'Car', 'SML5005E', 'CP012', N'Officer Lee'),
('2025-10-18 09:15:00', 4, N'Commercial Vehicle', 'SMC6006F', 'CP002', N'Officer Tan'),
('2025-10-18 10:00:00', 10, N'Motorcycle', 'SMR7007G', 'CP004', N'Officer Lim'),
('2025-10-19 08:30:00', 12, N'Car', 'SML8008H', 'CP006', N'Officer Lee'),
('2025-10-19 09:00:00', 13, N'Commercial Vehicle', 'SMC9009I', 'CP008', N'Officer Tan'),
('2025-10-18 08:00:00', 16, N'Car', 'SMR1313M', 'CP010', N'Officer Lee'),
('2025-10-19 09:15:00', 29, N'Commercial Vehicle', 'SML1414N', 'CP012', N'Officer Tan'),
('2025-12-25 08:30:00', 3, N'Car', 'SGX1234A', 'CP002', N'Officer Lee');

-- Season_Rate
-- Surface car parks
INSERT INTO Season_Rate VALUES ('Motorcycle', 'Surface', 15.00);     
INSERT INTO Season_Rate VALUES ('Car', 'Surface', 80.00);   
INSERT INTO Season_Rate VALUES ('Commercial Vehicle','Surface', 185.00);    
-- MSCP (Sheltered / Multi‑Storey) car parks
INSERT INTO Season_Rate VALUES ('Motorcycle', 'MSCP', 17.00);      
INSERT INTO Season_Rate VALUES ('Car','MSCP', 110.00);     
INSERT INTO Season_Rate VALUES ('Commercial Vehicle','MSCP', 185.00);     

-- Season_Parking_Pass_Decom	
INSERT INTO Season_Parking_Pass_Decom VALUES (2001, 'Car', 'Surface');      
INSERT INTO Season_Parking_Pass_Decom VALUES (2002, 'Car', 'MSCP');         
INSERT INTO Season_Parking_Pass_Decom VALUES (2003, 'Motorcycle', 'Surface');
INSERT INTO Season_Parking_Pass_Decom VALUES (2004, 'Motorcycle', 'MSCP');  
INSERT INTO Season_Parking_Pass_Decom VALUES (2005, 'Commercial Vehicle', 'Surface');    
INSERT INTO Season_Parking_Pass_Decom VALUES (2006, 'Commercial Vehicle', 'MSCP');   

-- Purchases
INSERT INTO Purchases VALUES ('SGX1234A', 2001, 'CP001', '2025-10-01 08:00:00', '2025-10-01', '2025-10-31', 80.00);
INSERT INTO Purchases VALUES ('SGY5678B', 2002, 'CP002', '2025-10-02 09:15:00', '2025-10-02', '2025-11-01', 110.00);
INSERT INTO Purchases VALUES ('SMR1001A', 2003, 'CP003', '2025-10-03 10:30:00', '2025-10-03', '2025-11-02', 15.00);
INSERT INTO Purchases VALUES ('SMC2002B', 2002, 'CP004', '2025-10-04 11:00:00', '2025-10-04', '2025-11-03', 110.00);
INSERT INTO Purchases VALUES ('SML3003C', 2005, 'CP005', '2025-10-05 12:00:00', '2025-10-05', '2025-11-04', 185.00);
INSERT INTO Purchases VALUES ('SMR4004D', 2004, 'CP006', '2025-10-06 13:30:00', '2025-10-06', '2025-11-05', 17.00);
INSERT INTO Purchases VALUES ('SML3003C', 2006, 'CP007', '2025-10-07 14:00:00', '2025-10-07', '2025-11-06', 185.00);
INSERT INTO Purchases VALUES ('SMC6006F', 2002, 'CP008', '2025-10-08 15:15:00', '2025-10-08', '2025-11-07', 110.00);
INSERT INTO Purchases VALUES ('SMR7007G', 2004, 'CP001', '2025-10-09 16:30:00', '2025-10-09', '2025-11-08', 17.00);
INSERT INTO Purchases VALUES ('SML8008H', 2006, 'CP002', '2025-10-10 17:45:00', '2025-10-10', '2025-11-09', 185.00);
INSERT INTO Purchases VALUES ('SMC9009I', 2002, 'CP003', '2025-10-11 08:20:00', '2025-10-11', '2025-11-10', 110.00);
INSERT INTO Purchases VALUES ('SMR1010J', 2004, 'CP004', '2025-10-12 09:50:00', '2025-10-12', '2025-11-11', 17.00);

-- CP001: Add 8 more purchases (total 9 out of 10 = 90%)
INSERT INTO Purchases VALUES ('SMC2002B', 2001, 'CP001', '2025-10-05 10:00:00', '2025-10-05', '2025-11-04', 80.00);
INSERT INTO Purchases VALUES ('SML3003C', 2001, 'CP001', '2025-10-06 11:00:00', '2025-10-06', '2025-11-05', 80.00);
INSERT INTO Purchases VALUES ('SMR1001A', 2003, 'CP001', '2025-10-07 12:00:00', '2025-10-07', '2025-11-06', 15.00);
INSERT INTO Purchases VALUES ('SML5005E', 2001, 'CP001', '2025-10-08 13:00:00', '2025-10-08', '2025-11-07', 80.00);
INSERT INTO Purchases VALUES ('SMC6006F', 2001, 'CP001', '2025-10-09 14:00:00', '2025-10-09', '2025-11-08', 80.00);
INSERT INTO Purchases VALUES ('SML8008H', 2001, 'CP001', '2025-10-10 15:00:00', '2025-10-10', '2025-11-09', 80.00);
INSERT INTO Purchases VALUES ('SMR1010J', 2003, 'CP001', '2025-10-12 17:00:00', '2025-10-12', '2025-11-11', 15.00);
INSERT INTO Purchases VALUES ('SMR1010J', 2003, 'CP001', '2025-10-13 18:00:00', '2025-11-12', '2025-12-11', 15.00);

-- CP003: Add 7 more purchases (total 9 out of 10 = 90%, since it already has 2)
INSERT INTO Purchases VALUES ('SML3003C', 2001, 'CP003', '2025-10-15 11:00:00', '2025-10-15', '2025-11-14', 80.00);
INSERT INTO Purchases VALUES ('SMR4004D', 2003, 'CP003', '2025-10-16 12:00:00', '2025-10-16', '2025-11-15', 15.00);
INSERT INTO Purchases VALUES ('SML5005E', 2001, 'CP003', '2025-10-17 13:00:00', '2025-10-17', '2025-11-16', 80.00);
INSERT INTO Purchases VALUES ('SMC6006F', 2001, 'CP003', '2025-10-18 14:00:00', '2025-10-18', '2025-11-17', 80.00);
INSERT INTO Purchases VALUES ('SML8008H', 2001, 'CP003', '2025-10-19 15:00:00', '2025-10-19', '2025-11-18', 80.00);
INSERT INTO Purchases VALUES ('SMR1010J', 2003, 'CP003', '2025-10-20 17:00:00', '2025-10-20', '2025-11-19', 15.00);
INSERT INTO Purchases VALUES ('SMC6006F', 2005, 'CP003', '2025-10-21 18:00:00', '2025-11-21', '2025-12-20', 80.00);


-- Accesses
INSERT INTO Accesses VALUES ('CP001', '123456', N'#05-123');
INSERT INTO Accesses VALUES ('CP002', '654321', N'#12-456');
INSERT INTO Accesses VALUES ('CP003', '111111', N'#03-101');
INSERT INTO Accesses VALUES ('CP004', '222222', N'#08-205');
INSERT INTO Accesses VALUES ('CP005', '333333', N'#11-032');
INSERT INTO Accesses VALUES ('CP006', '444444', N'#07-078');
INSERT INTO Accesses VALUES ('CP007', '555555', N'#02-048');
INSERT INTO Accesses VALUES ('CP008', '666666', N'#12-019');
INSERT INTO Accesses VALUES ('CP001', '777777', N'#09-010');
INSERT INTO Accesses VALUES ('CP002', '888888', N'#04-067');
INSERT INTO Accesses VALUES ('CP003', '999999', N'#10-050');
INSERT INTO Accesses VALUES ('CP004', '112233', N'#05-090');
INSERT INTO Accesses VALUES ('CP005', '223344', N'#06-073');
INSERT INTO Accesses VALUES ('CP006', '334455', N'#13-102');
INSERT INTO Accesses VALUES ('CP007', '445566', N'#03-088');
INSERT INTO Accesses VALUES ('CP008', '556677', N'#08-016');

