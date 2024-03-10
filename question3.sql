NAME: Darsh Patel(1002052912) , Kavish Khatri(1002069464)
SUBJECT: Database Systems

*********************************************************************************************************************************
QUERY:

select o.ownerId,o.oType,c.model,o.name,ct.Ctype,sum(r.amountDue) as EARNING
from rental r inner join car c inner join owner o inner join CAR_TYPE as ct
on r.carId=ct.vehicleID
where c.ownerId=o.ownerId and c.vehicleID=ct.vehicleID and rentalType='WEEKLY' and rentalStatus='SCHEDULED' group by o.ownerId,c.model,o.name,ct.Ctype;

***********************************************************************************************************************************

SPOOL FILE:

mysql> select o.ownerId,o.oType,c.model,o.name,ct.Ctype,sum(r.amountDue) as EARNING from rental r inner join car c inner join owner o inner join CAR_TYPE as ct on r.carId=ct.vehicleID where c.ownerId=o.ownerId and c.vehicleID=ct.vehicleID and rentalType='WEEKLY' and rentalStatus='SCHEDULED' group by o.ownerId,c.model,o.name,ct.Ctype;
+---------+------------+---------+-------+-------+---------+
| ownerId | oType      | model   | name  | Ctype | EARNING |
+---------+------------+---------+-------+-------+---------+
|   11002 | Individual | AUDI A5 | Smith | VAN   | 3000.00 |
+---------+------------+---------+-------+-------+---------+
1 row in set (0.01 sec)
