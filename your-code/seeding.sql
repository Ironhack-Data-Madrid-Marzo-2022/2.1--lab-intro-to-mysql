-- MySQL Workbench Forward Engineering

USE `mydb`;

-- INSERTS INTO Cars --

INSERT INTO Cars (vin, manufacturer, model, year, color) values ('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019,	'Blue');
INSERT INTO Cars (vin, manufacturer, model, year, color) values ('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019,	'Red');
INSERT INTO Cars (vin, manufacturer, model, year, color) values ('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White');
INSERT INTO Cars (vin, manufacturer, model, year, color) values ('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver');
INSERT INTO Cars (vin, manufacturer, model, year, color) values ('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray');
INSERT INTO Cars (vin, manufacturer, model, year, color) values ('DAM41UDN3CHU2WVF2', 'Volvo' ,'V60 Cross Country', 2019, 'Gray');

-- INSERTS INTO Customers --

INSERT INTO Customers (customer_id, name, phone, address, city, state, country, postal)
  values('10001', 'Pablo Picasso', '+34 636 17 63 82','Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045');

INSERT INTO Customers (customer_id, name, phone, address, city, state, country, postal)
  values('20001', 'Hedy Lamarr', '+43 1 514442250','Weiglgasse 10', 'Viena', 'Vienna', 'Austria', '1150');

INSERT INTO Customers (customer_id, name, phone, address, city, state, country, postal)
  values('30001', 'Katherine Johnson', '+1 202 358 0000','300 E St SW', 'Washington, DC', 'Washington', 'United States', '20546');

-- INSERTS INTO Salespersons --

INSERT INTO Salesperson (staff_id, name, store) value ('00001', 'Petey Cruiser', 'Madrid');
INSERT INTO Salesperson (staff_id, name, store) value ('00002', 'Anna Sthesia', 'Barcelona');
INSERT INTO Salesperson (staff_id, name, store) value ('00003', 'Paul Molive', 'Berlin');
INSERT INTO Salesperson (staff_id, name, store) value ('00004', 'Gail Forcewind', 'Paris');
INSERT INTO Salesperson (staff_id, name, store) value ('00005', 'Paige Turner', 'Mimia');
INSERT INTO Salesperson (staff_id, name, store) value ('00006', 'Bob Frapples', 'Mexico City');
INSERT INTO Salesperson (staff_id, name, store) value ('00007', 'Walter Melon', 'Amsterdam');
INSERT INTO Salesperson (staff_id, name, store) value ('00008', 'Shonda Leer', 'São Paulo');

-- INSERTS INTO Invoice --

INSERT INTO Invoices (invoice_number, date, cars_id, customers_id, salesperson_id) values ('852399038', '2018-08-22', 1, 1,	3);
INSERT INTO Invoices (invoice_number, date, cars_id, customers_id, salesperson_id) values ('731166526', '2018-12-31', 3, 1,	5);
INSERT INTO Invoices (invoice_number, date, cars_id, customers_id, salesperson_id) values ('271135104', '2019-01-22', 2, 2,	7);
