-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema car_company
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema car_company
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `car_company` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `car_company` ;

-- -----------------------------------------------------
-- Table `car_company`.`Salespersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car_company`.`Salespersons` (
  `staff_ID` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `store` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`staff_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `car_company`.`Customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car_company`.`Customers` (
  `ID_customer` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `phone number` INT NULL,
  `email` VARCHAR(45) NULL,
  `adress` VARCHAR(45) NULL,
  `city` VARCHAR(45) NULL,
  `state` VARCHAR(45) NULL,
  `country` VARCHAR(45) NULL,
  `zip` INT NULL,
  PRIMARY KEY (`ID_customer`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `car_company`.`Cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car_company`.`Cars` (
  `VIN` INT NOT NULL,
  `manufacturer` VARCHAR(45) NOT NULL,
  `model` VARCHAR(45) NOT NULL,
  `year` DATE NOT NULL,
  `color` VARCHAR(45) NOT NULL,
  `ID_cars` INT NOT NULL,
  PRIMARY KEY (`ID_cars`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `car_company`.`Invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car_company`.`Invoices` (
  `invoice number` INT NOT NULL,
  `date` DATE NULL,
  `car` INT NULL,
  `customers` VARCHAR(45) NULL,
  `salespersons` VARCHAR(45) NULL,
  `Cars_VIN` INT NOT NULL,
  `ID_invoices` INT NOT NULL,
  `Salespersons_staff_ID` INT NOT NULL,
  `Customers_ID_customer` INT NOT NULL,
  `Cars_ID_cars` INT NOT NULL,
  PRIMARY KEY (`ID_invoices`, `Salespersons_staff_ID`, `Customers_ID_customer`, `Cars_ID_cars`),
  INDEX `fk_Invoices_Salespersons_idx` (`Salespersons_staff_ID` ASC) VISIBLE,
  INDEX `fk_Invoices_Customers1_idx` (`Customers_ID_customer` ASC) VISIBLE,
  INDEX `fk_Invoices_Cars1_idx` (`Cars_ID_cars` ASC) VISIBLE,
  CONSTRAINT `fk_Invoices_Salespersons`
    FOREIGN KEY (`Salespersons_staff_ID`)
    REFERENCES `car_company`.`Salespersons` (`staff_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoices_Customers1`
    FOREIGN KEY (`Customers_ID_customer`)
    REFERENCES `car_company`.`Customers` (`ID_customer`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoices_Cars1`
    FOREIGN KEY (`Cars_ID_cars`)
    REFERENCES `car_company`.`Cars` (`ID_cars`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
