INSERT INTO cars (VIN,manufacturer,model,year,color) VALUES ('3K096I98581DHSNUP','Volkswagen','Tiguan','2019','Blue');
INSERT INTO cars (VIN,manufacturer,model,year,color) VALUES ('ZM8G7BEUQZ97IH46V','Peugeot','Rifter','2019','Red');
INSERT INTO cars (VIN,manufacturer,model,year,color) VALUES ('RKXVNNIHLVVZOUB4M','Ford','Fusion','2018','White');
INSERT INTO cars (VIN,manufacturer,model,year,color) VALUES ('HKNDGS7CU31E9Z7JW','Toyota','RAV4','2018','Silver');
INSERT INTO cars (VIN,manufacturer,model,year,color) VALUES ('DAM41UDN3CHU2WVF6','Volvo','V60','2019','Gray');
INSERT INTO cars (VIN,manufacturer,model,year,color) VALUES ('DAM41UDN3CHU2WVF5','Volvo','V60 Cross Country','2019','Gray');

INSERT INTO customers (Customer_ID,name,phone_number,email,address,city,state_province,country,postal_code) VALUES (10001,'Pablo Picasso','+34 636 17 63 82','-','Paseo de la Chopera, 14','Madrid','Madrid','Spain','28045');
INSERT INTO customers (Customer_ID,name,phone_number,email,address,city,state_province,country,postal_code) VALUES (20001,'Hedy Lamarr','+43 1 514442250','-','Weiglgasse 10','Viena','Vienna','Austria','1150');
INSERT INTO customers (Customer_ID,name,phone_number,email,address,city,state_province,country,postal_code) VALUES (30001,'Katherine Johnson','+1 202 358 0000','-','300 E St SW','Washington, DC','Washington','United States','20546');

INSERT INTO salespersons (staff_ID,name,store) VALUES ('00001','Petey Cruiser','Madrid');
INSERT INTO salespersons (staff_ID,name,store) VALUES ('00002','Anna Sthesia','Barcelona');
INSERT INTO salespersons (staff_ID,name,store) VALUES ('00003','Paul Molive','Berlin');
INSERT INTO salespersons (staff_ID,name,store) VALUES ('00004','Gail Forcewind','Paris');
INSERT INTO salespersons (staff_ID,name,store) VALUES ('00005','Paige Turner','Mimia');
INSERT INTO salespersons (staff_ID,name,store) VALUES ('00006','Bob Frapples','Mexico City');
INSERT INTO salespersons (staff_ID,name,store) VALUES ('00007','Walter Melon','Amsterdam');
INSERT INTO salespersons (staff_ID,name,store) VALUES ('00008','Shonda Leer','São Paulo');

INSERT INTO invoices (invoice_number,date,car,customer,salesperson) VALUES ('852399038','2018-08-22','0','1','3');
INSERT INTO invoices (invoice_number,date,car,customer,salesperson) VALUES ('731166526','2018-12-31','3','0','5');
INSERT INTO invoices (invoice_number,date,car,customer,salesperson) VALUES ('271135104','2019-01-22','2','2','7');

UPDATE salespersons SET store='Miami' where staff_ID='00005'

SELECT * FROM salespersons;

UPDATE customers SET email='ppicasso@gmail.com' where Customer_ID='10001';
UPDATE customers SET email='lamarr_hd@hollywood.com' where Customer_ID='20001';
UPDATE customers SET email='hello@nasa.gov' where Customer_ID='30001';