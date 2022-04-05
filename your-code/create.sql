-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema coches
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema coches
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `coches` DEFAULT CHARACTER SET latin1 ;
USE `coches` ;

-- -----------------------------------------------------
-- Table `coches`.`customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `coches`.`customers` (
  `idCustomers` INT(11) NOT NULL AUTO_INCREMENT,
  `customer ID` VARCHAR(45) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `phone number` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `address` VARCHAR(45) NOT NULL,
  `city` VARCHAR(45) NOT NULL,
  `state/province` VARCHAR(45) NOT NULL,
  `country` VARCHAR(45) NOT NULL,
  `zip/postal` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idCustomers`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `coches`.`salespersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `coches`.`salespersons` (
  `idSalespersons` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `store` VARCHAR(45) NOT NULL,
  `customers_idCustomers` INT(11) NOT NULL,
  PRIMARY KEY (`idSalespersons`, `customers_idCustomers`),
  INDEX `fk_salespersons_customers1_idx` (`customers_idCustomers` ASC),
  CONSTRAINT `fk_salespersons_customers1`
    FOREIGN KEY (`customers_idCustomers`)
    REFERENCES `coches`.`customers` (`idCustomers`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `coches`.`invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `coches`.`invoices` (
  `idInvoices` INT(11) NOT NULL AUTO_INCREMENT,
  `invoice number` VARCHAR(45) NOT NULL,
  `date` VARCHAR(45) NOT NULL,
  `car` VARCHAR(45) NOT NULL,
  `customer` VARCHAR(45) NOT NULL,
  `salesperson` VARCHAR(45) NOT NULL,
  `salespersons_idSalespersons` INT(11) NOT NULL,
  PRIMARY KEY (`idInvoices`, `salespersons_idSalespersons`),
  INDEX `fk_invoices_salespersons_idx` (`salespersons_idSalespersons` ASC),
  CONSTRAINT `fk_invoices_salespersons`
    FOREIGN KEY (`salespersons_idSalespersons`)
    REFERENCES `coches`.`salespersons` (`idSalespersons`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `coches`.`cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `coches`.`cars` (
  `idcars` INT(11) NOT NULL AUTO_INCREMENT,
  `VIN` VARCHAR(45) NOT NULL,
  `manufacturer` VARCHAR(45) NOT NULL,
  `model` VARCHAR(45) NOT NULL,
  `year` VARCHAR(45) NOT NULL,
  `color` VARCHAR(45) NOT NULL,
  `invoices_idInvoices` INT(11) NOT NULL,
  `invoices_salespersons_idSalespersons` INT(11) NOT NULL,
  PRIMARY KEY (`idcars`, `invoices_idInvoices`, `invoices_salespersons_idSalespersons`),
  INDEX `fk_cars_invoices1_idx` (`invoices_idInvoices` ASC, `invoices_salespersons_idSalespersons` ASC),
  CONSTRAINT `fk_cars_invoices1`
    FOREIGN KEY (`invoices_idInvoices` , `invoices_salespersons_idSalespersons`)
    REFERENCES `coches`.`invoices` (`idInvoices` , `salespersons_idSalespersons`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;