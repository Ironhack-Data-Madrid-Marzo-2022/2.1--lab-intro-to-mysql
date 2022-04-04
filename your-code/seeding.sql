insert into cars(vin,manufacturer,model,year, color)
values ('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', '2019' , 'Blue'),
('ZM8G7BEUQZ97IH46V','Peugeot','Rifter','2019','Red'),
('RKXVNNIHLVVZOUB4M','Ford','Fusion','2018','White'),
('HKNDGS7CU31E9Z7JW','Toyota','RAV4','2018','Silver'),
('DAM41UDN3CHU2WVF6','Volvo','V60','2019','Gray'),
('DAM41UDN3CHU2WVF7','Volvo','V60 Cross Country','2019','Gray');


insert into Customers(name,phone,email,address,city,state,country,postal)
values('Pablo Picasso','+34 636 17 63 82','-','Paseo de la Chopera, 14','Madrid','Madrid','Spain','28045'),
('Hedy Lamarr','+43 1 514442250','-','Weiglgasse 10','Viena','Vienna','Austria','1150'),
('Katherine Johnson','+1 202 358 0000','-','300 E St SW','Washington, DC','Washington','United States','20546');

insert into salespersons(staff_id,store)
values ('1','Madrid'),
('2','Barcelona'),
('3','Berlin'),
('4','Paris'),
('5','Mimia'),
('6','Mexico City'),
('7','Amsterdam'),
('8','São Paulo');


insert into invoices(invoice,date,car,customer,sales_person)
values('852399038','2018-08-22','0','1','3'),	
('731166526','2018-12-31','3','0','5'),	
('271135104','2019-01-22','2','2','7');	
