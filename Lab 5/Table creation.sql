USE sdabg2
GO

CREATE TABLE Person (
    NRIC VARCHAR(20) PRIMARY KEY,
    name NVARCHAR(100) NOT NULL,
    contact_number VARCHAR(20),
    email NVARCHAR(100)
);
GO

CREATE TABLE Rules (
    rule_no INT PRIMARY KEY,
    description NVARCHAR(255),
    fine DECIMAL(10, 2),
    vehicle_type NVARCHAR(50)
);
GO

CREATE TABLE Model_Brand (
    model NVARCHAR(50) PRIMARY KEY,
    brand NVARCHAR(50) NOT NULL
);
GO

CREATE TABLE Vehicle_Decom (
    VRN VARCHAR(20) PRIMARY KEY,
    IU_OBU_ID VARCHAR(30) UNIQUE,
    NRIC VARCHAR(20) NOT NULL,
    color NVARCHAR(30),
    manufactured_year INT,
    model NVARCHAR(50),
    vehicle_category NVARCHAR(50),
    CONSTRAINT FK_VehicleDecom_Person FOREIGN KEY (NRIC) REFERENCES Person(NRIC),
    CONSTRAINT FK_VehicleDecom_Model FOREIGN KEY (model) REFERENCES Model_Brand(model)
);
GO

CREATE TABLE Offence (
    date_time DATETIME NOT NULL,
    rule_no INT NOT NULL,
    VRN VARCHAR(20) NOT NULL,
    officer_name NVARCHAR(100),
    PRIMARY KEY (date_time, rule_no, VRN),
    CONSTRAINT FK_Offence_Rules FOREIGN KEY (rule_no) REFERENCES Rules(rule_no),
    CONSTRAINT FK_Offence_Vehicle FOREIGN KEY (VRN) REFERENCES Vehicle_Decom(VRN)
);
GO

CREATE TABLE Postal (
    postal_code VARCHAR(10) PRIMARY KEY,
    HDB_block_number NVARCHAR(10) NOT NULL,
    street_name NVARCHAR(100) NOT NULL
);
GO

CREATE TABLE HDB_Block_Decom (
    unit_number NVARCHAR(10) NOT NULL,
    postal_code VARCHAR(10) NOT NULL,
    PRIMARY KEY (unit_number, postal_code),
    CONSTRAINT FK_HDBBlockDecom_Postal FOREIGN KEY (postal_code) REFERENCES Postal(postal_code)
);
GO

CREATE TABLE Resident (
    NRIC VARCHAR(20) PRIMARY KEY,
    unit_number NVARCHAR(10) NOT NULL,
    postal_code VARCHAR(10) NOT NULL,
    CONSTRAINT FK_Resident_Person FOREIGN KEY (NRIC) REFERENCES Person(NRIC),
    CONSTRAINT FK_Resident_HDBBlock FOREIGN KEY (unit_number, postal_code) REFERENCES HDB_Block_Decom(unit_number, postal_code)
);
GO

CREATE TABLE Carpark (
    carpark_id VARCHAR(20) PRIMARY KEY,
    night_parking NVARCHAR(10),
    free_parking_period NVARCHAR(50)
);
GO

CREATE TABLE Surface_Carpark (
    carpark_id VARCHAR(20) PRIMARY KEY,
    CONSTRAINT FK_SurfaceCarpark_Carpark FOREIGN KEY (carpark_id) REFERENCES Carpark(carpark_id)
);
GO

CREATE TABLE MSCP (
    carpark_id VARCHAR(20) PRIMARY KEY,
    number_of_deck INT,
    clearance_height DECIMAL(4, 2),
    CONSTRAINT FK_MSCP_Carpark FOREIGN KEY (carpark_id) REFERENCES Carpark(carpark_id)
);
GO

CREATE TABLE LotType_ColourCode (
    colour_code VARCHAR(10) PRIMARY KEY,
    lot_type VARCHAR(50) NOT NULL
);
GO

CREATE TABLE Carpark_Lot_Decom (
    lot_id INT,
    carpark_id VARCHAR(20),
    colour_code VARCHAR(10),
    PRIMARY KEY (lot_id, carpark_id),
    CONSTRAINT FK_CarparkLot_Carpark FOREIGN KEY (carpark_id) REFERENCES Carpark(carpark_id),
    CONSTRAINT FK_CarparkLot_ColourCode FOREIGN KEY (colour_code) REFERENCES LotType_ColourCode(colour_code)
);
GO

CREATE TABLE Short_Term_Parking_Rate (
    UID INT PRIMARY KEY,
    charges DECIMAL(10,2),
    time_range VARCHAR(50),
    day VARCHAR(20),
    vehicle_type VARCHAR(50)
);
GO

CREATE TABLE Parking_Transaction (
    transaction_id INT PRIMARY KEY,
    day_of_week VARCHAR(20),
    entry_datetime DATETIME,
    exit_datetime DATETIME,
    duration_minutes INT,
    carpark_id VARCHAR(20),
    lot_id INT,
    VRN VARCHAR(20),
    UID INT,
    CONSTRAINT FK_ParkingTrans_CarparkLot FOREIGN KEY (lot_id, carpark_id) REFERENCES Carpark_Lot_Decom(lot_id, carpark_id),
    CONSTRAINT FK_ParkingTrans_Vehicle FOREIGN KEY (VRN) REFERENCES Vehicle_Decom(VRN),
    CONSTRAINT FK_ParkingTrans_STPR FOREIGN KEY (UID) REFERENCES Short_Term_Parking_Rate(UID)
);
GO

CREATE TABLE Season_Rate (
    vehicle_type VARCHAR(50),
    carpark_type VARCHAR(50),
    charges DECIMAL(10,2),
    PRIMARY KEY (vehicle_type, carpark_type)
);
GO

CREATE TABLE Season_Parking_Pass_Decom (
    UTR INT PRIMARY KEY,
    vehicle_type VARCHAR(50),
    carpark_type VARCHAR(50),
    CONSTRAINT FK_SeasonPass_SeasonRate FOREIGN KEY (vehicle_type, carpark_type)
        REFERENCES Season_Rate(vehicle_type, carpark_type)
);
GO

CREATE TABLE Accesses (
    carpark_id VARCHAR(20) NOT NULL,
    postal_code VARCHAR(10) NOT NULL,
    unit_number NVARCHAR(10) NOT NULL,
    PRIMARY KEY (carpark_id, postal_code, unit_number),
    CONSTRAINT FK_Accesses_Carpark FOREIGN KEY (carpark_id) REFERENCES Carpark(carpark_id),
    CONSTRAINT FK_Accesses_HDBBlock FOREIGN KEY (unit_number, postal_code) REFERENCES HDB_Block_Decom(unit_number, postal_code)
);
GO

CREATE TABLE Purchases (
    VRN VARCHAR(20) NOT NULL,
    UTR INT NOT NULL,
    carpark_id VARCHAR(20) NOT NULL,
    date_time DATETIME NOT NULL,
    validity_start DATE NOT NULL,
    validity_end DATE NOT NULL,
    amount_paid DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (VRN, UTR, carpark_id, date_time),
    CONSTRAINT FK_Purchases_Vehicle FOREIGN KEY (VRN) REFERENCES Vehicle_Decom(VRN),
    CONSTRAINT FK_Purchases_SeasonPass FOREIGN KEY (UTR) REFERENCES Season_Parking_Pass_Decom(UTR),
    CONSTRAINT FK_Purchases_Carpark FOREIGN KEY (carpark_id) REFERENCES Carpark(carpark_id)
);
GO