select * from cars;
INSERT INTO cars (invoice_no, date, vin, staff_id, costumer_id) values ('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', '2019', 'Blue');
INSERT INTO cars (invoice_no, date, vin, staff_id, costumer_id) values ('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', '2019', 'Gray');
INSERT INTO cars (invoice_no, date, vin, staff_id, costumer_id) values ('DAM41UDN3CHU2WVF62', 'Volvo', 'V60 Cross Country',	2019, 'Gray');
INSERT INTO cars (invoice_no, date, vin, staff_id, costumer_id) values ('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver');
INSERT INTO cars (invoice_no, date, vin, staff_id, costumer_id) values ('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White');
INSERT INTO cars (invoice_no, date, vin, staff_id, costumer_id) values ('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red');

select * from customers;
INSERT INTO customers (name, city, phone, email, address, costumer_id, state, zipcode, country) values ('Pablo Picasso', 'Madrid', '+34 636 17 63 82', '-', 'Paseo de la Chopera, 14', '10001', 'Madrid', 28045, 'Spain');
INSERT INTO customers(name, city, phone, email, address, costumer_id, state, zipcode, country) values ('Hedy Lamarr', 'Viena', '+43 1 514442250', '-', 'Weiglgasse 10', 20001, 'Vienna', '1150', 'Austria');
INSERT INTO customers (name, city, phone, email, address, costumer_id, state, zipcode, country) values ('Katherine Johnson', 'Washington, DC', '+1 202 358 0000', '-', '300 E St SW', 30001, 'Washington', 20546, 'United States');

select * from salespersons;
INSERT INTO salespersons (staff_id, name, store) values (1, 'Petey Cruiser', 'Madrid');
INSERT INTO salespersons (staff_id, name, store) values (2, 'Anna Sthesia', 'Barcelona');
INSERT INTO salespersons (staff_id, name, store) values (3, 'Paul Molive', 'Berlin');
INSERT INTO salespersons (staff_id, name, store) values (4, 'Gail Forcewind', 'Paris');
INSERT INTO salespersons (staff_id, name, store) values (5, 'Paige Turner', 'Mimia');
INSERT INTO salespersons (staff_id, name, store) values (6, 'Bob Frapples', 'Mexico City');
INSERT INTO salespersons (staff_id, name, store) values (7, 'Walter Melon', 'Amsterdam');
INSERT INTO salespersons (staff_id, name, store) values (8, 'Shonda Leer', 'São Paulo');

select * from invoices;
INSERT INTO invoices (invoice_no, date, vin, staff_id, costumer_id) values (271135104, '2019-01-22', 'RKXVNNIHLVVZOUB4M', 30001, 8);
INSERT INTO invoices (invoice_no, date, vin, staff_id, costumer_id) values (731166526, '2018-12-31', '3K096I98581DHSNU', 10001, 6);
INSERT INTO invoices (invoice_no, date, vin, staff_id, costumer_id) values (852399038, '2018-08-22', 'HKNDGS7CU31E9Z7JW', 20001, 0);
INSERT INTO invoices (invoice_no, date, vin, staff_id, costumer_id) values (112233445, '2018-08-24', 'HKNDGS7CU31E9Z7JW', 30001, 0);
