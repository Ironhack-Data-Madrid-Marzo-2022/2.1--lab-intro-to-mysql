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
-- -----------------------------------------------------
-- Schema prueba
-- -----------------------------------------------------
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Cars` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `vin` VARCHAR(45) NOT NULL,
  `manufacturer` VARCHAR(45) NOT NULL,
  `model` VARCHAR(45) NOT NULL,
  `year` VARCHAR(45) NOT NULL,
  `color` VARCHAR(45) NOT NULL,
  UNIQUE INDEX `vin_UNIQUE` (`vin` ASC) VISIBLE,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Customers` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `phone` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NULL,
  `address` VARCHAR(45) NOT NULL,
  `city` VARCHAR(45) NOT NULL,
  `state` VARCHAR(45) NOT NULL,
  `country` VARCHAR(45) NOT NULL,
  `postal` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Salespersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Salespersons` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `staff_id` INT NOT NULL,
  `store` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  UNIQUE INDEX `staff_id_UNIQUE` (`staff_id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Invoices` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `invoice` VARCHAR(45) NOT NULL,
  `date` DATE NOT NULL,
  `car` INT NOT NULL,
  `customer` INT NOT NULL,
  `sales_person` INT NOT NULL,
  `Cars_id` INT NULL,
  `Customers_id` INT NULL,
  `Salespersons_id` INT NULL,
  PRIMARY KEY (`id`, `Cars_id`, `Customers_id`, `Salespersons_id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  UNIQUE INDEX `invoice_UNIQUE` (`invoice` ASC) VISIBLE,
  INDEX `fk_Invoices_Cars1_idx` (`Cars_id` ASC) VISIBLE,
  INDEX `fk_Invoices_Customers1_idx` (`Customers_id` ASC) VISIBLE,
  INDEX `fk_Invoices_Salespersons1_idx` (`Salespersons_id` ASC) VISIBLE,
  CONSTRAINT `fk_Invoices_Cars1`
    FOREIGN KEY (`Cars_id`)
    REFERENCES `mydb`.`Cars` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoices_Customers1`
    FOREIGN KEY (`Customers_id`)
    REFERENCES `mydb`.`Customers` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoices_Salespersons1`
    FOREIGN KEY (`Salespersons_id`)
    REFERENCES `mydb`.`Salespersons` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

