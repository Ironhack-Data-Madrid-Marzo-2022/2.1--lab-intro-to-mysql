-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema lab_mysql
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema lab_mysql
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `lab_mysql` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `lab_mysql` ;

-- -----------------------------------------------------
-- Table `lab_mysql`.`manufact`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`manufact` (
  `idmanufact` INT NOT NULL,
  `manufactname` VARCHAR(45) NULL,
  PRIMARY KEY (`idmanufact`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab_mysql`.`model`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`model` (
  `idmodel` INT NOT NULL,
  `nameofmodel` VARCHAR(45) NULL,
  `manufact_idmanufact` INT NOT NULL,
  PRIMARY KEY (`idmodel`),
  INDEX `fk_model_manufact1_idx` (`manufact_idmanufact` ASC) VISIBLE,
  CONSTRAINT `fk_model_manufact1`
    FOREIGN KEY (`manufact_idmanufact`)
    REFERENCES `lab_mysql`.`manufact` (`idmanufact`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab_mysql`.`cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`cars` (
  `idcar` INT NOT NULL,
  `vin` VARCHAR(45) NULL,
  `color` VARCHAR(45) NULL,
  `year` VARCHAR(45) NULL,
  `model_idmodel` INT NOT NULL,
  PRIMARY KEY (`idcar`),
  INDEX `fk_cars_model_idx` (`model_idmodel` ASC) VISIBLE,
  CONSTRAINT `fk_cars_model`
    FOREIGN KEY (`model_idmodel`)
    REFERENCES `lab_mysql`.`model` (`idmodel`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab_mysql`.`customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`customers` (
  `idcustomers` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `phone_number` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  `address` VARCHAR(45) NULL,
  `city` VARCHAR(45) NULL,
  `state_province` VARCHAR(45) NULL,
  `country` VARCHAR(45) NULL,
  `zip_postal` VARCHAR(45) NULL,
  PRIMARY KEY (`idcustomers`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab_mysql`.`stores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`stores` (
  `idstores` INT NOT NULL,
  `nameofstore` VARCHAR(45) NULL,
  PRIMARY KEY (`idstores`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab_mysql`.`salespersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`salespersons` (
  `idsalespersons` INT NOT NULL,
  `staffid` VARCHAR(45) NULL,
  `name` VARCHAR(45) NULL,
  `stores_idstores` INT NOT NULL,
  PRIMARY KEY (`idsalespersons`),
  INDEX `fk_salespersons_stores1_idx` (`stores_idstores` ASC) VISIBLE,
  CONSTRAINT `fk_salespersons_stores1`
    FOREIGN KEY (`stores_idstores`)
    REFERENCES `lab_mysql`.`stores` (`idstores`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab_mysql`.`invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`invoices` (
  `idinvoices` INT NOT NULL,
  `invoicenumber` VARCHAR(45) NULL,
  `date` VARCHAR(45) NULL,
  `salespersons_idsalespersons` INT NOT NULL,
  `customers_idcustomers` INT NOT NULL,
  `cars_idcar` INT NOT NULL,
  PRIMARY KEY (`idinvoices`),
  INDEX `fk_invoices_salespersons1_idx` (`salespersons_idsalespersons` ASC) VISIBLE,
  INDEX `fk_invoices_customers1_idx` (`customers_idcustomers` ASC) VISIBLE,
  INDEX `fk_invoices_cars1_idx` (`cars_idcar` ASC) VISIBLE,
  CONSTRAINT `fk_invoices_salespersons1`
    FOREIGN KEY (`salespersons_idsalespersons`)
    REFERENCES `lab_mysql`.`salespersons` (`idsalespersons`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_invoices_customers1`
    FOREIGN KEY (`customers_idcustomers`)
    REFERENCES `lab_mysql`.`customers` (`idcustomers`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_invoices_cars1`
    FOREIGN KEY (`cars_idcar`)
    REFERENCES `lab_mysql`.`cars` (`idcar`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;