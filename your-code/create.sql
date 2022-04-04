-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema create1
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema create1
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `create1` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `create1` ;

-- -----------------------------------------------------
-- Table `create1`.`Cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `create1`.`Cars` (
  `idCars` INT NOT NULL,
  `vin` CHAR(17) NULL,
  `manufacturer` VARCHAR(45) NULL,
  `model` VARCHAR(45) NULL,
  `year` CHAR(4) NULL,
  `color` VARCHAR(45) NULL,
  PRIMARY KEY (`idCars`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `create1`.`Customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `create1`.`Customers` (
  `CustomerID` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `phone` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  `address` VARCHAR(45) NULL,
  `state/province` VARCHAR(45) NULL,
  `country` VARCHAR(45) NULL,
  `postal` VARCHAR(6) NULL,
  PRIMARY KEY (`CustomerID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `create1`.`Salespersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `create1`.`Salespersons` (
  `staff ID` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `store` VARCHAR(45) NULL,
  `Cars_idCars` INT NOT NULL,
  PRIMARY KEY (`staff ID`, `Cars_idCars`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `create1`.`Invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `create1`.`Invoices` (
  `invoice number` INT NOT NULL,
  `date` VARCHAR(45) NULL,
  `Cars_idCars` INT NOT NULL,
  `Customers_CustomerID` INT NOT NULL,
  `Salespersons_staff ID` INT NOT NULL,
  PRIMARY KEY (`invoice number`, `Cars_idCars`, `Customers_CustomerID`, `Salespersons_staff ID`),
  INDEX `fk_Invoices_Cars_idx` (`Cars_idCars` ASC) VISIBLE,
  INDEX `fk_Invoices_Customers1_idx` (`Customers_CustomerID` ASC) VISIBLE,
  INDEX `fk_Invoices_Salespersons1_idx` (`Salespersons_staff ID` ASC) VISIBLE,
  CONSTRAINT `fk_Invoices_Cars`
    FOREIGN KEY (`Cars_idCars`)
    REFERENCES `create1`.`Cars` (`idCars`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoices_Customers1`
    FOREIGN KEY (`Customers_CustomerID`)
    REFERENCES `create1`.`Customers` (`CustomerID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoices_Salespersons1`
    FOREIGN KEY (`Salespersons_staff ID`)
    REFERENCES `create1`.`Salespersons` (`staff ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

