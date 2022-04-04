-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema create_lab3
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema create_lab3
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `create_lab3` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
-- -----------------------------------------------------
-- Schema create_lab2
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema create_lab2
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `create_lab2` ;
USE `create_lab3` ;

-- -----------------------------------------------------
-- Table `create_lab3`.`cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `create_lab3`.`cars` (
  `VIN` VARCHAR(45) NOT NULL,
  `Manufacturer` VARCHAR(45) NULL DEFAULT NULL,
  `Model` VARCHAR(45) NULL DEFAULT NULL,
  `Year_` INT NULL DEFAULT NULL,
  `Color` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`VIN`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `create_lab3`.`salespersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `create_lab3`.`salespersons` (
  `id` INT NOT NULL,
  `Name` VARCHAR(45) NULL DEFAULT NULL,
  `Store` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `create_lab3`.`invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `create_lab3`.`invoices` (
  `InvoiceNumber` INT NOT NULL,
  `Date_` DATETIME NULL DEFAULT NULL,
  `Car` INT NULL DEFAULT NULL,
  `Customer` INT NULL DEFAULT NULL,
  `Salesperson` VARCHAR(45) NULL DEFAULT NULL,
  `cars_VIN` VARCHAR(45) NOT NULL,
  `salespersons_id` INT NOT NULL,
  `costumers_IdCost` INT NOT NULL,
  PRIMARY KEY (`InvoiceNumber`),
  INDEX `fk_invoices_cars1_idx` (`cars_VIN` ASC) VISIBLE,
  INDEX `fk_invoices_salespersons1_idx` (`salespersons_id` ASC) VISIBLE,
  INDEX `fk_invoices_costumers1_idx` (`costumers_IdCost` ASC) VISIBLE,
  CONSTRAINT `fk_invoices_cars1`
    FOREIGN KEY (`cars_VIN`)
    REFERENCES `create_lab3`.`cars` (`VIN`),
  CONSTRAINT `fk_invoices_costumers1`
    FOREIGN KEY (`costumers_IdCost`)
    REFERENCES `create_lab2`.`costumers` (`IdCost`),
  CONSTRAINT `fk_invoices_salespersons1`
    FOREIGN KEY (`salespersons_id`)
    REFERENCES `create_lab3`.`salespersons` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `create_lab3`.`costumers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `create_lab3`.`costumers` (
  `IdCost` INT NOT NULL,
  `Name_` VARCHAR(45) NULL DEFAULT NULL,
  `Phone_` VARCHAR(45) NULL DEFAULT NULL,
  `Email_` VARCHAR(45) NULL DEFAULT NULL,
  `Address_` VARCHAR(45) NULL DEFAULT NULL,
  `City_` VARCHAR(45) NULL DEFAULT NULL,
  `State_` VARCHAR(45) NULL DEFAULT NULL,
  `Country_` VARCHAR(45) NULL DEFAULT NULL,
  `CodPostal_` INT NULL DEFAULT NULL,
  `invoices_InvoiceNumber` INT NOT NULL,
  PRIMARY KEY (`IdCost`),
  INDEX `fk_costumers_invoices1_idx` (`invoices_InvoiceNumber` ASC) VISIBLE,
  CONSTRAINT `fk_costumers_invoices1`
    FOREIGN KEY (`invoices_InvoiceNumber`)
    REFERENCES `create_lab3`.`invoices` (`InvoiceNumber`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

USE `create_lab2` ;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

