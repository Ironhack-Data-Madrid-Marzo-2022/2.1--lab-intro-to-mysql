USE car_company;
INSERT INTO cars (`ID_cars`, `VIN`, `manufacturer`, `model`, `year`, `color`)
VALUES ('0', '3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', '2019-00-00', 'Blue' );
INSERT INTO cars (`ID_cars`, `VIN`, `manufacturer`, `model`, `year`, `color`)
VALUES ('1', 'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', '2019-00-00', 'Red' );
INSERT INTO cars (`ID_cars`, `VIN`, `manufacturer`, `model`, `year`, `color`)
VALUES ('2', 'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', '2018-00-00', 'White' );
INSERT INTO cars (`ID_cars`, `VIN`, `manufacturer`, `model`, `year`, `color`)
VALUES ('3', 'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', '2018-00-00', 'Silver' );
INSERT INTO cars (`ID_cars`, `VIN`, `manufacturer`, `model`, `year`, `color`)
VALUES ('4', 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', '2019-00-00', 'Gray' );
INSERT INTO cars (`ID_cars`, `VIN`, `manufacturer`, `model`, `year`, `color`)
VALUES ('5', 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', '2019-00-00', 'Gray' );

INSERT INTO customers (`ID_customer`, `name`, `phone number`,`adress`, `email`, `city`, `state`,`country`,`zip`)
VALUES ('0', 'Pablo Picasso', '+34 636 17 63 82','-','Paseo de la Chopera, 14', 'Madrid', 'Madrid','Spain', 28045) ;
INSERT INTO customers (`ID_customer`, `name`, `phone number`,`adress`, `email`, `city`, `state`,`country`,`zip`)
VALUES ('1', 'Hedy Lamarr', '+43 1 51444225','-' ,'Weiglgasse 10', 'Viena', 'Vienna','Austria', '1150');
INSERT INTO customers (`ID_customer`, `name`, `phone number`,`adress`, `email`, `city`, `state`,`country`,`zip`)
VALUES ('2', 'Katherine Johnson', '+1 202 358 0000','-' ,'300 E St SW', 'Washington, DC', 'Washington','United States','20546');

INSERT INTO salespersons (`staff_ID`,`name`,`store`)
VALUES ('0', 'Petey Cruiser', 'Madrid') ;
INSERT INTO salespersons (`staff_ID`,`name`,`store`)
VALUES ('1', 'Anna Sthesia', 'Barcelona') ;
INSERT INTO salespersons (`staff_ID`,`name`,`store`)
VALUES ('2', 'Paul Molive', 'Berlin') ;
INSERT INTO salespersons (`staff_ID`,`name`,`store`)
VALUES ('3', 'Gail Forcewind', 'Paris') ;
INSERT INTO salespersons (`staff_ID`,`name`,`store`)
VALUES ('4', 'Paige Turner', 'Mimia') ;
INSERT INTO salespersons (`staff_ID`,`name`,`store`)
VALUES ('5', 'Bob Frapples', 'Mexico City') ;
INSERT INTO salespersons (`staff_ID`,`name`,`store`)
VALUES ('6', 'Walter Melon', 'Amsterdam') ;
INSERT INTO salespersons (`staff_ID`,`name`,`store`)
VALUES ('7', 'Shonda Leer', 'São Paulo') ;


INSERT INTO invoices (`ID_invoices`,`date`,`Cars_ID_cars`,`Customers_ID_customer`,`Salespersons_staff_ID`)
VALUES ('0', '22-08-2018', '0','1','3') ;
INSERT INTO invoices (`ID_invoices`,`date`,`Cars_ID_cars`,`Customers_ID_customer`,`Salespersons_staff_ID`)
VALUES ('1', '22-08-2018', '3','0','5') ;
INSERT INTO invoices (`ID_invoices`,`date`,`Cars_ID_cars`,`Customers_ID_customer`,`Salespersons_staff_ID`)
VALUES ('2', '22-08-2018', '2','2','7') ;






