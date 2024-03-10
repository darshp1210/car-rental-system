NAME: Darsh Patel(1002052912) , Kavish Khatri(1002069464)
SUBJECT: Database Systems

*********************************************************************************************************************************

CREATE TABLE CUSTOMER (
    customerID INT AUTO_INCREMENT,
    name VARCHAR(250) NOT NULL,
    phoneNo VARCHAR(250) NOT NULL,
    cType VARCHAR(250) NOT NULL,
    state VARCHAR(50) NOT NULL,
    PRIMARY KEY (customerID),
    UNIQUE (customerID)
);


INSERT INTO CUSTOMER (name,phoneNo,cType,state) VALUES('K.Khatri','123-456-7890','Business','TX');
INSERT INTO CUSTOMER (name,phoneNo,cType,state)VALUES('D.Patel','123-456-4490','Business','TX');
INSERT INTO CUSTOMER (name,phoneNo,cType,state)VALUES('H.Muniwala','123-456-3450','Individual','IL');
INSERT INTO CUSTOMER (name,phoneNo,cType,state)VALUES('D.Thakkar','456-756-7890','Business','NY');
INSERT INTO CUSTOMER (name,phoneNo,cType,state)VALUES('K.Patel','347-856-7890','Individual','TX');
INSERT INTO CUSTOMER (name,phoneNo,cType,state)VALUES('K.Panchal','128-856-7890','Business','IL');
INSERT INTO CUSTOMER (name,phoneNo,cType,state)VALUES('U.Sheth','127-856-7890','Individual','CA');
INSERT INTO CUSTOMER (name,phoneNo,cType,state)VALUES('K.Shah','128-956-7459','Business','MA');
INSERT INTO CUSTOMER (name,phoneNo,cType,state)VALUES('Y.Patel','143-436-7821','Individual','TX');
INSERT INTO CUSTOMER (name,phoneNo,cType,state)VALUES('T.Thakkar','725-534-2908','Individual','IL');
INSERT INTO CUSTOMER (name,phoneNo,cType,state)VALUES('M.Rajput','146-767-8223','Business','NY');
INSERT INTO CUSTOMER (name,phoneNo,cType,state)VALUES('H.Talsania','743-656-3240','Individual','CA');
INSERT INTO CUSTOMER (name,phoneNo,cType,state)VALUES('Y.Smith','743-656-8974','Business','CA');

****************************************************************************************************************

CREATE TABLE OWNER (
        ownerId INT NOT NULL,
        name VARCHAR(255) NOT NULL,
        oType VARCHAR(10) NOT NULL,
        PRIMARY KEY (ownerId),
        UNIQUE (ownerId)
    );

INSERT INTO OWNER VALUES(11001,'Alex','Individual');
INSERT INTO OWNER VALUES(11002,'Smith','Individual');
INSERT INTO OWNER VALUES(11003,'Chase','Bank');
INSERT INTO OWNER VALUES(11004,'PNC','Bank');
INSERT INTO OWNER VALUES(11005,'Don Davis','Rental');
INSERT INTO OWNER VALUE(11006,'U Haul','Rental');
    
    CREATE TABLE BANK (
        Id INT NOT NULL,
        ownerId INT NOT NULL,
        Bankname VARCHAR(255) NOT NULL,
        phoneNO VARCHAR(255) NOT NULL,
        PRIMARY KEY (Id),
        FOREIGN KEY (ownerId) REFERENCES OWNER(ownerId) ON DELETE CASCADE
    );

INSERT INTO BANK VALUES(101,11003,'Chase','567-839-8123');
INSERT INTO BANK VALUES(102,11004,'PNC','674-297-5013');
    
    CREATE TABLE INDIVIDUAL (
        Id INT NOT NULL,
        ownerId INT NOT NULL,
        name VARCHAR(255) NOT NULL,
        phoneNO VARCHAR(255) NOT NULL,
        PRIMARY KEY (Id),
        FOREIGN KEY (ownerId) REFERENCES OWNER(ownerId) ON DELETE CASCADE
    );
    
INSERT INTO INDIVIDUAL VALUES(201,11001,'Alex','244-982-4690');
INSERT INTO INDIVIDUAL VALUES(202,11002,'Smith','278-235-4690');

    CREATE TABLE RENTAL_COMPANY (
        Id INT NOT NULL,
        ownerId INT NOT NULL,
        Companyname VARCHAR(255) NOT NULL,
        phoneNO VARCHAR(255) NOT NULL,
        PRIMARY KEY (Id),
        FOREIGN KEY (ownerId) REFERENCES OWNER(ownerId) ON DELETE CASCADE
    );

INSERT INTO RENTAL_COMPANY VALUES(301,11005,'Don Davis','153-984-5921');
INSERT INTO RENTAL_COMPANY VALUES(302,11006,'U Haul','594-753-6841');

***************************************************************************************
    
    CREATE TABLE CAR (
        vehicleID INT AUTO_INCREMENT,
        model VARCHAR(255) NOT NULL,
        year INT NOT NULL,
        ownerId INT NOT NULL,
        availableStartDate DATE NOT NULL,
        PRIMARY KEY (VehicleID),
        UNIQUE (vehicleID),
        FOREIGN KEY (ownerId) REFERENCES OWNER(ownerId) ON DELETE CASCADE
    );

INSERT INTO CAR (model,year,ownerId,availableStartDate) VALUES('BMW X5',2018,11001,'2023-05-05');
INSERT INTO CAR (model,year,ownerId,availableStartDate) VALUES('BMW X1',2019,11001,'2023-05-03');
INSERT INTO CAR (model,year,ownerId,availableStartDate) VALUES('BMW X2',2019,11002,'2023-05-01');
INSERT INTO CAR (model,year,ownerId,availableStartDate) VALUES('BMW X3',2020,11003,'2023-05-23');
INSERT INTO CAR (model,year,ownerId,availableStartDate) VALUES('BMW X6',2020,11003,'2023-05-12');
INSERT INTO CAR (model,year,ownerId,availableStartDate) VALUES('BMW X7',2020,11006,'2023-06-05');
INSERT INTO CAR (model,year,ownerId,availableStartDate) VALUES('BMW X4',2020,11003,'2023-06-12');
INSERT INTO CAR (model,year,ownerId,availableStartDate) VALUES('BMW X4 M',2021,11004,'2023-06-30');
INSERT INTO CAR (model,year,ownerId,availableStartDate) VALUES('BMW X6 M',2015,11002,'2023-07-13');
INSERT INTO CAR (model,year,ownerId,availableStartDate) VALUES('BMW IX 1',2013,11005,'2023-07-19');
INSERT INTO CAR (model,year,ownerId,availableStartDate) VALUES('BMW IX 3',2022,11006,'2023-08-24');
INSERT INTO CAR (model,year,ownerId,availableStartDate) VALUES('AUDI Q5',2018,11001,'2023-07-30');
INSERT INTO CAR (model,year,ownerId,availableStartDate) VALUES('AUDI A4',2019,11001,'2023-08-11');
INSERT INTO CAR (model,year,ownerId,availableStartDate) VALUES('AUDI A5',2019,11002,'2023-10-23');
INSERT INTO CAR (model,year,ownerId,availableStartDate) VALUES('AUDI A6',2020,11003,'2023-11-07');
INSERT INTO CAR (model,year,ownerId,availableStartDate) VALUES('AUDI A7',2020,11003,'2023-10-12');
INSERT INTO CAR (model,year,ownerId,availableStartDate) VALUES('AUDI A8',2020,11006,'2023-06-25');
INSERT INTO CAR (model,year,ownerId,availableStartDate) VALUES('AUDI Q3',2020,11003,'2023-06-11');
INSERT INTO CAR (model,year,ownerId,availableStartDate) VALUES('AUDI Q8',2021,11004,'2023-06-03');
INSERT INTO CAR (model,year,ownerId,availableStartDate) VALUES('AUDI Q7',2015,11002,'2023-05-04');
INSERT INTO CAR (model,year,ownerId,availableStartDate) VALUES('AUDI R8',2013,11005,'2023-06-19');
INSERT INTO CAR (model,year,ownerId,availableStartDate) VALUES('AUDI TT',2022,11006,'2023-09-24');
INSERT INTO CAR (model,year,ownerId,availableStartDate) VALUES('HONDA FIT',2022,11006,'2023-09-04');
INSERT INTO CAR (model,year,ownerId,availableStartDate) VALUES('HONDA CIVIC',2019,11001,'2023-08-10');
INSERT INTO CAR (model,year,ownerId,availableStartDate) VALUES('HONDA CITY',2019,11002,'2023-10-20');
INSERT INTO CAR (model,year,ownerId,availableStartDate) VALUES('HONDA ACCORD',2020,11003,'2023-11-17');
INSERT INTO CAR (model,year,ownerId,availableStartDate) VALUES('HONDA AMAZE',2020,11003,'2023-10-20');
INSERT INTO CAR (model,year,ownerId,availableStartDate) VALUES('HONDA PILOT',2020,11006,'2023-06-15');
INSERT INTO CAR (model,year,ownerId,availableStartDate) VALUES('HONDA WRV',2020,11003,'2023-06-16');
INSERT INTO CAR (model,year,ownerId,availableStartDate) VALUES('HONDA S2000',2021,11004,'2023-06-23');
INSERT INTO CAR (model,year,ownerId,availableStartDate) VALUES('HONDA NSX',2015,11002,'2023-05-24');
INSERT INTO CAR (model,year,ownerId,availableStartDate) VALUES('HONDA INSIGHT',2013,11005,'2023-06-29');
INSERT INTO CAR (model,year,ownerId,availableStartDate) VALUES('HONDA CRV',2018,11001,'2023-07-03');
INSERT INTO CAR (model,year,ownerId,availableStartDate) VALUES('TOYOTA CAMRY',2018,11001,'2023-07-03');
INSERT INTO CAR (model,year,ownerId,availableStartDate) VALUES('TOYOTA COROLLA',2019,11001,'2023-08-10');
INSERT INTO CAR (model,year,ownerId,availableStartDate) VALUES('TOYOTA PRIUS',2019,11002,'2023-10-20');
INSERT INTO CAR (model,year,ownerId,availableStartDate) VALUES('TOYOTA YARIS',2020,11003,'2023-11-17');
INSERT INTO CAR (model,year,ownerId,availableStartDate) VALUES('TOYOTA GR SUPRA',2020,11003,'2023-10-20');
INSERT INTO CAR (model,year,ownerId,availableStartDate) VALUES('TOYOTA HILLANDER',2020,11006,'2023-06-15');
INSERT INTO CAR (model,year,ownerId,availableStartDate) VALUES('TOYOTA 4RUNNER',2020,11003,'2023-06-16');
INSERT INTO CAR (model,year,ownerId,availableStartDate) VALUES('TOYOTA LANDCRUISER',2021,11004,'2023-06-23');
INSERT INTO CAR (model,year,ownerId,availableStartDate) VALUES('TOYOTA SEINNA',2015,11002,'2023-05-24');
INSERT INTO CAR (model,year,ownerId,availableStartDate) VALUES('TOYOTA INNOVA',2013,11005,'2023-06-29');
INSERT INTO CAR (model,year,ownerId,availableStartDate) VALUES('TOYOTA FORTUNER',2022,11006,'2023-09-04');
INSERT INTO CAR (model,year,ownerId,availableStartDate) VALUES('La Ferrari ',2023,11003,'2023-06-14');

*********************************************************************************************************************

 CREATE TABLE CAR_TYPE (
        vehicleID INT NOT NULL,
        Ctype VARCHAR(10) NOT NULL,
        dailyRate DECIMAL(10,2) NOT NULL,
        weeklyRate DECIMAL(10,2) NOT NULL,
        category VARCHAR(10) NOT NULL,
        FOREIGN KEY (vehicleID) REFERENCES CAR(vehicleID) ON DELETE CASCADE
    );

INSERT INTO CAR_TYPE VALUES(1,'SUV',50,300,'REGULAR');
INSERT INTO CAR_TYPE VALUES(2,'SUV',60,360,'LUXURY');
INSERT INTO CAR_TYPE VALUES(3,'SUV',60,360,'LUXURY');
INSERT INTO CAR_TYPE VALUES(4,'SUV',50,300,'REGULAR');
INSERT INTO CAR_TYPE VALUES(5,'SUV',60,360,'LUXURY');
INSERT INTO CAR_TYPE VALUES(6,'SUV',50,300,'REGULAR');
INSERT INTO CAR_TYPE VALUES(7,'TRUCK',120,720,'LUXURY');
INSERT INTO CAR_TYPE VALUES(8,'TRUCK',120,720,'LUXURY');
INSERT INTO CAR_TYPE VALUES(9,'TRUCK',100,600,'REGULAR');
INSERT INTO CAR_TYPE VALUES(10,'TRUCK',120,720,'LUXURY');
INSERT INTO CAR_TYPE VALUES(11,'TRUCK',100,600,'REGULAR');
INSERT INTO CAR_TYPE VALUES(12,'VAN',96,576,'LUXURY');
INSERT INTO CAR_TYPE VALUES(13,'VAN',80,480,'REGULAR');
INSERT INTO CAR_TYPE VALUES(14,'VAN',80,480,'REGULAR');
INSERT INTO CAR_TYPE VALUES(15,'VAN',96,576,'LUXURY');
INSERT INTO CAR_TYPE VALUES(16,'VAN',96,576,'LUXURY');
INSERT INTO CAR_TYPE VALUES(17,'COMPACT',40,240,'REGULAR');
INSERT INTO CAR_TYPE VALUES(18,'COMPACT',40,240,'REGULAR');
INSERT INTO CAR_TYPE VALUES(19,'COMPACT',48,288,'LUXURY');
INSERT INTO CAR_TYPE VALUES(20,'COMPACT',48,288,'LUXURY');
INSERT INTO CAR_TYPE VALUES(21,'COMPACT',40,240,'REGULAR');
INSERT INTO CAR_TYPE VALUES(22,'LARGE',90,540,'LUXURY');
INSERT INTO CAR_TYPE VALUES(23,'LARGE',75,450,'REGULAR');
INSERT INTO CAR_TYPE VALUES(24,'LARGE',90,540,'LUXURY');
INSERT INTO CAR_TYPE VALUES(25,'LARGE',75,450,'REGULAR');
INSERT INTO CAR_TYPE VALUES(26,'LARGE',90,540,'LUXURY');
INSERT INTO CAR_TYPE VALUES(27,'MEDIUM',60,360,'REGULAR');
INSERT INTO CAR_TYPE VALUES(28,'MEDIUM',72,432,'LUXURY');
INSERT INTO CAR_TYPE VALUES(29,'MEDIUM',60,360,'REGULAR');
INSERT INTO CAR_TYPE VALUES(30,'MEDIUM',60,360,'REGULAR');
INSERT INTO CAR_TYPE VALUES(31,'MEDIUM',72,432,'LUXURY');
INSERT INTO CAR_TYPE VALUES(32,'MEDIUM',60,360,'REGULAR');
INSERT INTO CAR_TYPE VALUES(33,'MEDIUM',60,360,'REGULAR');
INSERT INTO CAR_TYPE VALUES(34,'TRUCK',120,720,'LUXURY');
INSERT INTO CAR_TYPE VALUES(35,'TRUCK',100,600,'REGULAR');
INSERT INTO CAR_TYPE VALUES(36,'TRUCK',100,600,'REGULAR');
INSERT INTO CAR_TYPE VALUES(37,'SUV',50,300,'REGULAR');
INSERT INTO CAR_TYPE VALUES(38,'SUV',60,360,'LUXURY');
INSERT INTO CAR_TYPE VALUES(39,'SUV',50,300,'REGULAR');
INSERT INTO CAR_TYPE VALUES(40,'LARGE',90,540,'LUXURY');
INSERT INTO CAR_TYPE VALUES(41,'LARGE',90,540,'LUXURY');
INSERT INTO CAR_TYPE VALUES(42,'LARGE',75,450,'REGULAR');
INSERT INTO CAR_TYPE VALUES(43,'MEDIUM',60,360,'REGULAR');
INSERT INTO CAR_TYPE VALUES(44,'MEDIUM',60,360,'REGULAR');

***********************************************************************************************
    
    CREATE TABLE RENTAL (
        rentalId INT AUTO_INCREMENT,
        carId INT NOT NULL,
        customerId INT NOT NULL,
        rentalStatus VARCHAR(20) NOt NULL,
        rentalType VARCHAR(10) NOT NULL,
        noOfDays INT,
        noOfWeeks INT,
        startDate DATE,
        returnDate DATE,
        amountDue DECIMAL(10,2),
        PRIMARY KEY (rentalId),
        UNIQUE (rentalId),
        FOREIGN KEY (carId) REFERENCES CAR(VehicleID) ON DELETE CASCADE,
        FOREIGN KEY (customerId) REFERENCES CUSTOMER(customerID) ON DELETE CASCADE
    );


INSERT INTO RENTAL(carId,customerId,rentalStatus,rentalType,noOfDays,noOfWeeks,startDate,returnDate,amountDue) VALUES(1,1,'ACTIVE','DAILY',10,NULL,'2023-04-21','2023-04-30',1200.00);
INSERT INTO RENTAL(carId,customerId,rentalStatus,rentalType,noOfDays,noOfWeeks,startDate,returnDate,amountDue) VALUES(2,1,'ACTIVE','WEEKLY',2,NULL,'2023-06-16','2023-06-30',900.00);
INSERT INTO RENTAL(carId,customerId,rentalStatus,rentalType,noOfDays,noOfWeeks,startDate,returnDate,amountDue) VALUES(14,4,'ACTIVE','WEEKLY',3,NULL,'2023-06-9','2023-06-30',1500.00);
INSERT INTO RENTAL(carId,customerId,rentalStatus,rentalType,noOfDays,noOfWeeks,startDate,returnDate,amountDue) VALUES(25,4,'ACTIVE','WEEKLY',3,NULL,'2023-06-9','2023-06-30',1500.00);
INSERT INTO RENTAL(carId,customerId,rentalStatus,rentalType,noOfDays,noOfWeeks,startDate,returnDate,amountDue) VALUES(40,3,'ACTIVE','WEEKLY',3,NULL,'2023-06-9','2023-06-30',1500.00);


