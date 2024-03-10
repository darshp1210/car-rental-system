NAME: Darsh Patel(1002052912) , Kavish Khatri(1002069464)
SUBJECT: Database Systems

*********************************************************************************************************************************

Question 4.1

//PHP FILE NAME -> addNewCustomer.PHP

INSERT INTO CUSTOMER (name,phoneNo,cType,state)VALUES('D.Thakkar','456-756-7890','Business','NY');


Question 4.2

//PHP FILE NAME -> addNewCar.PHP

INSERT INTO CAR (model,year,ownerId,availableStartDate) VALUES('BMW X7',2020,11006,'2023-06-05');


Question 4.3

//PHP FILE NAME -> addNewRental.PHP

INSERT INTO RENTAL(carId,customerId,rentalStatus,rentalType,noOfDays,noOfWeeks,startDate,returnDate,amountDue) VALUES(14,4,'SCHEDULED','WEEKLY',3,NULL,'2023-06-9','2023-06-30',1500.00);


Question 4.4

//PHP FILE NAME -> newRentals.PHP

select carId,customerId,rentalType,startDate,returnDate,amountDue from RENTAL where rentalStatus='SCHEDULED';


Question 4.5

//PHP FILE NAME -> updateRentalRates.PHP

UPDATE CAR_TYPE SET dailyRate='$dr' WHERE Ctype = '$cartype' AND category = '$ccat';
   
UPDATE CAR_TYPE SET weeklyRate='$wr' WHERE Ctype='$cartype' AND category='$ccat'