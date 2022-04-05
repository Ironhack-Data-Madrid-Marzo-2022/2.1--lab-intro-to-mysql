-- Update de Mimia a Miami

UPDATE `lab_mysql`.`stores` SET `nameofstore` = 'Miami' WHERE (`idstores` = '4');

-- Update de e-mails

UPDATE `lab_mysql`.`customers` SET `email` = 'ppicasso@gmail.com' WHERE (`idcustomers` = '0');
UPDATE `lab_mysql`.`customers` SET `email` = 'lamarr_hd@hollywood.com' WHERE (`idcustomers` = '1');
UPDATE `lab_mysql`.`customers` SET `email` = 'hello@nasa.gov' WHERE (`idcustomers` = '2');
