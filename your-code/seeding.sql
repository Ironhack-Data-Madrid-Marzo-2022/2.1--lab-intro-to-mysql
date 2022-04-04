insert into Cars (idCars, vin, manufacturer, model, year, color)
values (0, "3K096I98581DHSNUP", "Volkswagen", "Tiguan", 2019, "Blue");

insert into Cars (idCars,vin,manufacturer,model,year,color)
values (1,"ZM8G7BEUQZ97IH46V","Peugeot","Rifter",2019,"Red");

insert into Cars (idCars,vin,manufacturer,model,year,color)
values (2,"RKXVNNIHLVVZOUB4M","Ford","Fusion",2018,"White");

insert into Cars (idCars,vin,manufacturer,model,year,color)
values (3,"HKNDGS7CU31E9Z7JW","Toyota","RAV4",2018,"Silver");

insert into Cars (idCars,vin,manufacturer,model,year,color)
values (4,"DAM41UDN3CHU2WVF6","Volvo","V60",2019,"Gray");

insert into Cars (idCars,vin,manufacturer,model,year,color)
values (5,"DAM41UDN3CHU2WVF6","Volvo","V60 Cross Country",2019,"Gray");

select *
from Cars;


ALTER TABLE Customers
RENAME COLUMN `state/province` TO state;

insert into Customers (CustomerID, name, phone, email, address, state, country, postal)
values(10001,"Pablo Picasso","+34 636 17 63 82","-","Paseo de la Chopera, 14","Madrid","Spain",28045);

insert into Customers (CustomerID, name, phone, email, address, state, country, postal)
values(20001,"Hedy Lamarr","+43 1 514442250","-","Weiglgasse 10","Vienna","Austria","1150");

insert into Customers (CustomerID, name, phone, email, address, state, country, postal)
values(30001,"Katherine Johnson","+1 202 358 0000","-","300 E St SW","Washington","United States","20546");


select *
from Customers;

insert into Salespersons (`staff ID`, name, store, Cars_idCars)
values(00001,"Petey Cruiser","Madrid",0);

insert into Salespersons (`staff ID`, name, store, Cars_idCars)
values(00002,"Anna Sthesia","Barcelona",1);

insert into Salespersons (`staff ID`, name, store, Cars_idCars)
values("00003","Paul Molive","Berlin",2);

insert into Salespersons (`staff ID`, name, store, Cars_idCars)
values(00004,"Gail Forcewind","Paris",3);

insert into Salespersons (`staff ID`, name, store, Cars_idCars)
values(00005,"Paige Turner","Mimia",4);

insert into Salespersons (`staff ID`, name, store, Cars_idCars)
values(00006,"Bob Frapples","Mexico City",5);

insert into Salespersons (`staff ID`, name, store, Cars_idCars)
values(00007,"Walter Melon","Amsterdam",6);

insert into Salespersons (`staff ID`, name, store, Cars_idCars)
values(00008,"Shonda Leer","São Paulo",7);

select *
from Salespersons;



insert into Invoices (`invoice number`, date, Cars_idCars, Customers_CustomerID, `Salespersons_staff ID`)
values(852399038,"22-08-2018",0,10001,3);

insert into Invoices (`invoice number`, date, Cars_idCars, Customers_CustomerID, `Salespersons_staff ID`)
values(731166526,"31-12-2018",3,20001,5);

insert into Invoices (`invoice number`, date, Cars_idCars, Customers_CustomerID, `Salespersons_staff ID`)
values(271135104,22-01-2019,2,30001,7);

select *
from Invoices;
