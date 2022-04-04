CREATE TABLE Car(
   id INT,
   vin varchar(45),
   manufacturer varchar(45),
   model varchar(45),
   yeear year,
   color varchar(45)
)

CREATE TABLE Customer(
    id int,
    customer_id int,
    name varchar(45),
    phone varchar(45),
    email varchar(45),
    address varchar(45),
    city varchar(45),
    State_Provience varchar(45),
    country varchar(45),
    postal varchar(45)
)

CREATE TABLE invoices(
    id int,
    invoice varchar(45),
    dates DATE,
    car varchar (45),
    customer varchar (45),
    sales_person varchar (45)
)

CREATE TABLE sales_person(
    id int,
    staff_id int,
    namess varchar(45),
    Store varchar(45)
)