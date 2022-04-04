select * from cars;

insert into cars (
			VIN, 
			Date_, 
			Model, 
			Year_, 
			Color
) 
values ('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', '2019', 'Blue');

insert into cars (
			VIN, 
			Date_, 
			Model, 
			Year_, 
			Color
) 
values ('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', '2019', 'Gray');

insert into cars (
			VIN, 
			Date_, 
			Model, 
			Year_, 
			Color
) 
values ('DAM41UDN3CHU2WVF62', 'Volvo', 'V60 Cross Country',	2019, 'Gray');

insert into cars (
			VIN, 
			Date_, 
			Model, 
			Year_, 
			Color
) 
values ('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver');

insert into cars (
			VIN, 
			Date_, 
			Model, 
			Year_, 
			Color
) 
values ('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White');

insert into cars (
			VIN, 
			Date_, 
			Model, 
			Year_, 
			Color
) 
values ('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red');

----------------------------------------------------

select * from customers;

insert into customers (
			IdCost, 
			Name_, 
			Phone_, 
			Email_, 
			Address_, 
			City_, 
			State_, 
			Country_, 
			CodPostal
) 
values ('10001', 'Pablo Picasso', '+34 636 17 63 82', '-', 'Madrid', 'Paseo de la Chopera, 14',  'Madrid', 'Spain', 28045);

insert into customers(
			IdCost, 
			Name_, 
			Phone_, 
			Email_, 
			Address_, 
			City_, 
			State_, 
			Country_, 
			CodPostal
) 
values (20001, 'Hedy Lamarr', '+43 1 514442250', '-', 'Weiglgasse 10', 'Viena', 'Vienna', 'Austria',  '1150');

insert into customers (
			IdCost, 
			Name_, 
			Phone_, 
			Email_, 
			Address, 
			City, 
			State, 
			Country_, 
			CodPostal
) 
values (30001, 'Katherine Johnson', '+1 202 358 0000', '-', '300 E St SW',  'Washington, DC', 'Washington','United States' 20546);

-------------------------------------------

select * from salespersons;

insert into salespersons (
			id, 
			Name, 
			Store
) values (1, 'Petey Cruiser', 'Madrid');

insert into salespersons (
			id, 
			Name, 
			Store
) 
values (2, 'Anna Sthesia', 'Barcelona');

insert into salespersons (
			id, 
			Name, 
			Store
)
values (3, 'Paul Molive', 'Berlin');

insert into salespersons (
			id, 
			Name, 
			Store
) 
values (4, 'Gail Forcewind', 'Paris');

insert into salespersons (
			id, 
			Name, 
			Store
)
values (5, 'Paige Turner', 'Mimia');

insert into salespersons (
			id, 
			Name, 
			Store
) 
values (6, 'Bob Frapples', 'Mexico City');

insert into salespersons (
			id, 
			Name, 
			Store
)
values (7, 'Walter Melon', 'Amsterdam');

insert into salespersons (
			id, 
			Name, 
			Store
) 
values (8, 'Shonda Leer', 'São Paulo');

--------------------------------------------

select * from invoices;

insert into invoices (
			InvoiceNumber, 
			Date_, 
			Car, 
			Customer, 
			Salesperson
) 
values (271135104, '2019-01-22', 'RKXVNNIHLVVZOUB4M', 8, 30001);

insert into invoices (
			InvoiceNumber, 
			Date_, 
			Car, 
			Customer, 
			Salesperson
)
values (731166526, '2018-12-31', '3K096I98581DHSNU', 6, 10001);

insert into invoices (
			InvoiceNumber, 
			Date_, 
			Car, 
			Customer, 
			Salesperson
) 
values (852399038, '2018-08-22', 'HKNDGS7CU31E9Z7JW', 0, 20001);

insert into invoices (
			InvoiceNumber, 
			Date_, 
			Car, 
			Customer, 
			Salesperson
) 
values (112233445, '2018-08-24', 'HKNDGS7CU31E9Z7JW', 0, 30001);
