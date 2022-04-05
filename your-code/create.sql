-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`cars` (
  `vin` VARCHAR(45) NOT NULL,
  `manufacturer` VARCHAR(255) NOT NULL,
  `model` VARCHAR(45) NOT NULL,
  `year` VARCHAR(45) NOT NULL,
  `color` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`vin`),
  UNIQUE INDEX `vin_UNIQUE` (`vin` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 109
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`customers` (
  `customer_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `phone` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NULL DEFAULT NULL,
  `address` VARCHAR(45) NOT NULL,
  `city` VARCHAR(45) NOT NULL,
  `province` VARCHAR(45) NOT NULL,
  `country` VARCHAR(45) NOT NULL,
  `postal_code` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`customer_id`),
  UNIQUE INDEX `customer_id_UNIQUE` (`customer_id` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 30005
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`salespersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`salespersons` (
  `staff_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `store` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`staff_id`),
  UNIQUE INDEX `staff_id_UNIQUE` (`staff_id` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 17
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`invoices` (
  `invoice_id` INT NOT NULL AUTO_INCREMENT,
  `date` DATE NULL DEFAULT NULL,
  `CUSTOMERS_customer_id` INT NOT NULL,
  `SALESPERSONS_staff_id` INT NOT NULL,
  `CARS_car_id` INT NOT NULL,
  PRIMARY KEY (`invoice_id`),
  UNIQUE INDEX `invoice_id_UNIQUE` (`invoice_id` ASC) VISIBLE,
  INDEX `fk_INVOICES_CUSTOMERS_idx` (`CUSTOMERS_customer_id` ASC) VISIBLE,
  INDEX `fk_INVOICES_SALESPERSONS1_idx` (`SALESPERSONS_staff_id` ASC) VISIBLE,
  INDEX `fk_INVOICES_CARS1_idx` (`CARS_car_id` ASC) VISIBLE,
  CONSTRAINT `fk_INVOICES_CARS1`
    FOREIGN KEY (`CARS_car_id`)
    REFERENCES `mydb`.`cars` (`vin`),
  CONSTRAINT `fk_INVOICES_CUSTOMERS`
    FOREIGN KEY (`CUSTOMERS_customer_id`)
    REFERENCES `mydb`.`customers` (`customer_id`),
  CONSTRAINT `fk_INVOICES_SALESPERSONS1`
    FOREIGN KEY (`SALESPERSONS_staff_id`)
    REFERENCES `mydb`.`salespersons` (`staff_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
