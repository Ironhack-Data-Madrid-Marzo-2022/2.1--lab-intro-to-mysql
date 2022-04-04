INSERT INTO cars (VIN,manufacturer,model,year,color) VALUES ('3K096I98581DHSNUP','Volkswagen','Tiguan','2019','Blue');
INSERT INTO cars (VIN,manufacturer,model,year,color) VALUES ('ZM8G7BEUQZ97IH46V','Peugeot','Rifter','2019','Red');
INSERT INTO cars (VIN,manufacturer,model,year,color) VALUES ('RKXVNNIHLVVZOUB4M','Ford','Fusion','2018','White');
INSERT INTO cars (VIN,manufacturer,model,year,color) VALUES ('HKNDGS7CU31E9Z7JW','Toyota','RAV4','2018','Silver');
INSERT INTO cars (VIN,manufacturer,model,year,color) VALUES ('DAM41UDN3CHU2WVF6','Volvo','V60','2019','Gray');
INSERT INTO cars (VIN,manufacturer,model,year,color) VALUES ('DAM41UDN3CHU2WVF5','Volvo','V60 Cross Country','2019','Gray');

ALTER TABLE cars CHANGE `vehicle identification number` VIN int;

ALTER TABLE customers CHANGE `phone number` `phone_number` int;
ALTER TABLE customers CHANGE `customer ID` `Customer_ID` int;
ALTER TABLE customers CHANGE `zip/postal code` `postal_code` int;
ALTER TABLE customers CHANGE `state/province` `state_province` int;

ALTER TABLE cars MODIFY COLUMN VIN varchar(30);

INSERT INTO customers (Customer_ID,`name`,phone_number,email,address,city,state_province,country,postal_code) VALUES (10001,'Pablo Picasso','+34 636 17 63 82','-','Paseo de la Chopera, 14','Madrid','Madrid','Spain','28045');
INSERT INTO customers (Customer_ID,name,phone_number,email,address,city,state_province,country,postal_code) VALUES (20001,'Hedy Lamarr','+43 1 514442250','-','Weiglgasse 10','Viena','Vienna','Austria','1150');
INSERT INTO customers (Customer_ID,name,phone_number,email,address,city,state_province,country,postal_code) VALUES (30001,'Katherine Johnson','+1 202 358 0000','-','300 E St SW','Washington, DC','Washington','United States','20546');