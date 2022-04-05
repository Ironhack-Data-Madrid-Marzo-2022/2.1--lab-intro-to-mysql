INSERT INTO `lab_mysql`.`cars` (`idcar`, `vin`, `color`, `year`, `model_idmodel`) VALUES ('0', '3K096I98581DHSNUP', 'Blue', '2019', '0');
INSERT INTO `lab_mysql`.`cars` (`idcar`, `vin`, `color`, `year`, `model_idmodel`) VALUES ('1', 'ZM8G7BEUQZ97IH46V', 'Red', '2019', '1');
INSERT INTO `lab_mysql`.`cars` (`idcar`, `vin`, `color`, `year`, `model_idmodel`) VALUES ('2', 'RKXVNNIHLVVZOUB4M', 'White', '2018', '2');
INSERT INTO `lab_mysql`.`cars` (`idcar`, `vin`, `color`, `year`, `model_idmodel`) VALUES ('3', 'HKNDGS7CU31E9Z7JW', 'Silver', '2018', '3');
INSERT INTO `lab_mysql`.`cars` (`idcar`, `vin`, `color`, `year`, `model_idmodel`) VALUES ('4', 'DAM41UDN3CHU2WVF6', 'Gray', '2019', '4');
INSERT INTO `lab_mysql`.`cars` (`idcar`, `vin`, `color`, `year`, `model_idmodel`) VALUES ('5', 'DAM41UDN3CHU2WVF6', 'Gray', '2019', '5');


INSERT INTO `lab_mysql`.`salespersons` (`idsalespersons`, `staffid`, `name`, `stores_idstores`) VALUES ('0', '00001', 'Petey Cruiser', '0');
INSERT INTO `lab_mysql`.`salespersons` (`idsalespersons`, `staffid`, `name`, `stores_idstores`) VALUES ('1', '00002', 'Anna Sthesia', '1');
INSERT INTO `lab_mysql`.`salespersons` (`idsalespersons`, `staffid`, `name`, `stores_idstores`) VALUES ('2', '00003', 'Paul Molive', '2');
INSERT INTO `lab_mysql`.`salespersons` (`idsalespersons`, `staffid`, `name`, `stores_idstores`) VALUES ('3', '00004', 'Gail Forcewind', '3');
INSERT INTO `lab_mysql`.`salespersons` (`idsalespersons`, `staffid`, `name`, `stores_idstores`) VALUES ('4', '00005', 'Paige Turner', '4');
INSERT INTO `lab_mysql`.`salespersons` (`idsalespersons`, `staffid`, `name`, `stores_idstores`) VALUES ('5', '00006', 'Bob Frapples', '5');
INSERT INTO `lab_mysql`.`salespersons` (`idsalespersons`, `staffid`, `name`, `stores_idstores`) VALUES ('6', '00007', 'Walter Melon', '6');
INSERT INTO `lab_mysql`.`salespersons` (`idsalespersons`, `staffid`, `name`, `stores_idstores`) VALUES ('7', '00008', 'Shonda Leer', '7');


INSERT INTO `lab_mysql`.`invoices` (`idinvoices`, `invoicenumber`, `date`, `salespersons_idsalespersons`, `customers_idcustomers`, `cars_idcar`) VALUES ('0', '852399038', '22-08-2018', '3', '1', '0');
INSERT INTO `lab_mysql`.`invoices` (`idinvoices`, `invoicenumber`, `date`, `salespersons_idsalespersons`, `customers_idcustomers`, `cars_idcar`) VALUES ('1', '731166526', '31-12-2018', '5', '0', '3');
INSERT INTO `lab_mysql`.`invoices` (`idinvoices`, `invoicenumber`, `date`, `salespersons_idsalespersons`, `customers_idcustomers`, `cars_idcar`) VALUES ('2', '271135104', '22-01-2019', '7', '2', '2');


INSERT INTO `lab_mysql`.`manufact` (`idmanufact`, `manufactname`) VALUES ('0', 'Volkswagen');
INSERT INTO `lab_mysql`.`manufact` (`idmanufact`, `manufactname`) VALUES ('1', 'Peugeot');
INSERT INTO `lab_mysql`.`manufact` (`idmanufact`, `manufactname`) VALUES ('2', 'Ford');
INSERT INTO `lab_mysql`.`manufact` (`idmanufact`, `manufactname`) VALUES ('3', 'Toyota');
INSERT INTO `lab_mysql`.`manufact` (`idmanufact`, `manufactname`) VALUES ('4', 'Volvo');
INSERT INTO `lab_mysql`.`manufact` (`idmanufact`, `manufactname`) VALUES ('5', 'Volvo');


INSERT INTO `lab_mysql`.`model` (`idmodel`, `nameofmodel`, `manufact_idmanufact`) VALUES ('0', 'Tiguan', '0');
INSERT INTO `lab_mysql`.`model` (`idmodel`, `nameofmodel`, `manufact_idmanufact`) VALUES ('1', 'Rifter', '1');
INSERT INTO `lab_mysql`.`model` (`idmodel`, `nameofmodel`, `manufact_idmanufact`) VALUES ('2', 'Fusion', '2');
INSERT INTO `lab_mysql`.`model` (`idmodel`, `nameofmodel`, `manufact_idmanufact`) VALUES ('3', 'RAV4', '3');
INSERT INTO `lab_mysql`.`model` (`idmodel`, `nameofmodel`, `manufact_idmanufact`) VALUES ('4', 'V60', '4');
INSERT INTO `lab_mysql`.`model` (`idmodel`, `nameofmodel`, `manufact_idmanufact`) VALUES ('5', 'V60 Cross Country', '5');


INSERT INTO `lab_mysql`.`stores` (`idstores`, `nameofstore`) VALUES ('0', 'Madrid');
INSERT INTO `lab_mysql`.`stores` (`idstores`, `nameofstore`) VALUES ('1', 'Barcelona');
INSERT INTO `lab_mysql`.`stores` (`idstores`, `nameofstore`) VALUES ('2', 'Berlin');
INSERT INTO `lab_mysql`.`stores` (`idstores`, `nameofstore`) VALUES ('3', 'Paris');
INSERT INTO `lab_mysql`.`stores` (`idstores`, `nameofstore`) VALUES ('4', 'Mimia');
INSERT INTO `lab_mysql`.`stores` (`idstores`, `nameofstore`) VALUES ('5', 'Mexico City');
INSERT INTO `lab_mysql`.`stores` (`idstores`, `nameofstore`) VALUES ('6', 'Amsterdam');
INSERT INTO `lab_mysql`.`stores` (`idstores`, `nameofstore`) VALUES ('7', 'São Paulo');

-- Update del problema entre customers e invoices

UPDATE `lab_mysql`.`customers` SET `idcustomers` = '0' WHERE (`idcustomers` = '10001');
UPDATE `lab_mysql`.`customers` SET `idcustomers` = '1' WHERE (`idcustomers` = '20001');
UPDATE `lab_mysql`.`customers` SET `idcustomers` = '2' WHERE (`idcustomers` = '30001');

