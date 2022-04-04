{\rtf1\ansi\ansicpg1252\cocoartf2513
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 -- MySQL Workbench Forward Engineering\
\
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;\
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;\
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';\
\
-- -----------------------------------------------------\
-- Schema mydb\
-- -----------------------------------------------------\
-- -----------------------------------------------------\
-- Schema publications\
-- -----------------------------------------------------\
\
-- -----------------------------------------------------\
-- Schema publications\
-- -----------------------------------------------------\
CREATE SCHEMA IF NOT EXISTS `publications` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;\
-- -----------------------------------------------------\
-- Schema lab_mysql\
-- -----------------------------------------------------\
\
-- -----------------------------------------------------\
-- Schema lab_mysql\
-- -----------------------------------------------------\
CREATE SCHEMA IF NOT EXISTS `lab_mysql` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;\
USE `publications` ;\
\
-- -----------------------------------------------------\
-- Table `publications`.`authors`\
-- -----------------------------------------------------\
CREATE TABLE IF NOT EXISTS `publications`.`authors` (\
  `au_id` VARCHAR(11) NOT NULL,\
  `au_lname` VARCHAR(40) NOT NULL,\
  `au_fname` VARCHAR(20) NOT NULL,\
  `phone` CHAR(12) NOT NULL,\
  `address` VARCHAR(40) NULL DEFAULT NULL,\
  `city` VARCHAR(20) NULL DEFAULT NULL,\
  `state` CHAR(2) NULL DEFAULT NULL,\
  `zip` CHAR(5) NULL DEFAULT NULL,\
  `contract` TINYINT NOT NULL,\
  PRIMARY KEY (`au_id`))\
ENGINE = InnoDB\
DEFAULT CHARACTER SET = utf8;\
\
\
-- -----------------------------------------------------\
-- Table `publications`.`stores`\
-- -----------------------------------------------------\
CREATE TABLE IF NOT EXISTS `publications`.`stores` (\
  `stor_id` CHAR(4) NOT NULL,\
  `stor_name` VARCHAR(40) NULL DEFAULT NULL,\
  `stor_address` VARCHAR(40) NULL DEFAULT NULL,\
  `city` VARCHAR(20) NULL DEFAULT NULL,\
  `state` CHAR(2) NULL DEFAULT NULL,\
  `zip` CHAR(5) NULL DEFAULT NULL,\
  PRIMARY KEY (`stor_id`))\
ENGINE = InnoDB\
DEFAULT CHARACTER SET = utf8;\
\
\
-- -----------------------------------------------------\
-- Table `publications`.`discounts`\
-- -----------------------------------------------------\
CREATE TABLE IF NOT EXISTS `publications`.`discounts` (\
  `discounttype` VARCHAR(40) NOT NULL,\
  `stor_id` CHAR(4) NULL DEFAULT NULL,\
  `lowqty` SMALLINT NULL DEFAULT NULL,\
  `highqty` SMALLINT NULL DEFAULT NULL,\
  `discount` DECIMAL(4,2) NOT NULL,\
  INDEX `discounts_stor_id` (`stor_id` ASC) VISIBLE,\
  CONSTRAINT `discounts_ibfk_1`\
    FOREIGN KEY (`stor_id`)\
    REFERENCES `publications`.`stores` (`stor_id`)\
    ON DELETE CASCADE\
    ON UPDATE CASCADE)\
ENGINE = InnoDB\
DEFAULT CHARACTER SET = utf8;\
\
\
-- -----------------------------------------------------\
-- Table `publications`.`jobs`\
-- -----------------------------------------------------\
CREATE TABLE IF NOT EXISTS `publications`.`jobs` (\
  `job_id` SMALLINT NOT NULL,\
  `job_desc` VARCHAR(50) NOT NULL,\
  `min_lvl` SMALLINT NOT NULL,\
  `max_lvl` SMALLINT NOT NULL,\
  PRIMARY KEY (`job_id`))\
ENGINE = InnoDB\
DEFAULT CHARACTER SET = utf8;\
\
\
-- -----------------------------------------------------\
-- Table `publications`.`publishers`\
-- -----------------------------------------------------\
CREATE TABLE IF NOT EXISTS `publications`.`publishers` (\
  `pub_id` CHAR(4) NOT NULL,\
  `pub_name` VARCHAR(40) NULL DEFAULT NULL,\
  `city` VARCHAR(20) NULL DEFAULT NULL,\
  `state` CHAR(2) NULL DEFAULT NULL,\
  `country` VARCHAR(30) NULL DEFAULT NULL,\
  PRIMARY KEY (`pub_id`))\
ENGINE = InnoDB\
DEFAULT CHARACTER SET = utf8;\
\
\
-- -----------------------------------------------------\
-- Table `publications`.`employee`\
-- -----------------------------------------------------\
CREATE TABLE IF NOT EXISTS `publications`.`employee` (\
  `emp_id` CHAR(9) NOT NULL,\
  `fname` VARCHAR(20) NOT NULL,\
  `minit` CHAR(1) NULL DEFAULT NULL,\
  `lname` VARCHAR(30) NOT NULL,\
  `job_id` SMALLINT NOT NULL,\
  `job_lvl` SMALLINT NULL DEFAULT NULL,\
  `pub_id` CHAR(4) NOT NULL,\
  `hire_date` DATETIME NOT NULL,\
  PRIMARY KEY (`emp_id`),\
  INDEX `employee_job_id` (`job_id` ASC) VISIBLE,\
  INDEX `employee_pub_id` (`pub_id` ASC) VISIBLE,\
  CONSTRAINT `employee_ibfk_1`\
    FOREIGN KEY (`job_id`)\
    REFERENCES `publications`.`jobs` (`job_id`)\
    ON DELETE CASCADE\
    ON UPDATE CASCADE,\
  CONSTRAINT `employee_ibfk_2`\
    FOREIGN KEY (`pub_id`)\
    REFERENCES `publications`.`publishers` (`pub_id`)\
    ON DELETE CASCADE\
    ON UPDATE CASCADE)\
ENGINE = InnoDB\
DEFAULT CHARACTER SET = utf8;\
\
\
-- -----------------------------------------------------\
-- Table `publications`.`pub_info`\
-- -----------------------------------------------------\
CREATE TABLE IF NOT EXISTS `publications`.`pub_info` (\
  `pub_id` CHAR(4) NOT NULL,\
  `logo` LONGBLOB NULL DEFAULT NULL,\
  `pr_info` LONGTEXT NULL DEFAULT NULL,\
  PRIMARY KEY (`pub_id`),\
  CONSTRAINT `pub_info_ibfk_1`\
    FOREIGN KEY (`pub_id`)\
    REFERENCES `publications`.`publishers` (`pub_id`)\
    ON DELETE CASCADE\
    ON UPDATE CASCADE)\
ENGINE = InnoDB\
DEFAULT CHARACTER SET = utf8;\
\
\
-- -----------------------------------------------------\
-- Table `publications`.`titles`\
-- -----------------------------------------------------\
CREATE TABLE IF NOT EXISTS `publications`.`titles` (\
  `title_id` VARCHAR(6) NOT NULL,\
  `title` VARCHAR(80) NOT NULL,\
  `type` CHAR(12) NOT NULL,\
  `pub_id` CHAR(4) NULL DEFAULT NULL,\
  `price` DECIMAL(19,4) NULL DEFAULT NULL,\
  `advance` DECIMAL(19,4) NULL DEFAULT NULL,\
  `royalty` INT NULL DEFAULT NULL,\
  `ytd_sales` INT NULL DEFAULT NULL,\
  `notes` VARCHAR(200) NULL DEFAULT NULL,\
  `pubdate` DATETIME NOT NULL,\
  PRIMARY KEY (`title_id`),\
  INDEX `titles_pub_id` (`pub_id` ASC) VISIBLE,\
  CONSTRAINT `titles_ibfk_1`\
    FOREIGN KEY (`pub_id`)\
    REFERENCES `publications`.`publishers` (`pub_id`)\
    ON DELETE CASCADE\
    ON UPDATE CASCADE)\
ENGINE = InnoDB\
DEFAULT CHARACTER SET = utf8;\
\
\
-- -----------------------------------------------------\
-- Table `publications`.`roysched`\
-- -----------------------------------------------------\
CREATE TABLE IF NOT EXISTS `publications`.`roysched` (\
  `title_id` VARCHAR(6) NOT NULL,\
  `lorange` INT NULL DEFAULT NULL,\
  `hirange` INT NULL DEFAULT NULL,\
  `royalty` INT NULL DEFAULT NULL,\
  INDEX `roysched_title_id` (`title_id` ASC) VISIBLE,\
  CONSTRAINT `roysched_ibfk_1`\
    FOREIGN KEY (`title_id`)\
    REFERENCES `publications`.`titles` (`title_id`)\
    ON DELETE CASCADE\
    ON UPDATE CASCADE)\
ENGINE = InnoDB\
DEFAULT CHARACTER SET = utf8;\
\
\
-- -----------------------------------------------------\
-- Table `publications`.`sales`\
-- -----------------------------------------------------\
CREATE TABLE IF NOT EXISTS `publications`.`sales` (\
  `stor_id` CHAR(4) NOT NULL,\
  `ord_num` VARCHAR(20) NOT NULL,\
  `ord_date` DATETIME NOT NULL,\
  `qty` SMALLINT NOT NULL,\
  `payterms` VARCHAR(12) NOT NULL,\
  `title_id` VARCHAR(6) NOT NULL,\
  PRIMARY KEY (`stor_id`, `ord_num`, `title_id`),\
  INDEX `sales_title_id` (`title_id` ASC) VISIBLE,\
  CONSTRAINT `sales_ibfk_1`\
    FOREIGN KEY (`stor_id`)\
    REFERENCES `publications`.`stores` (`stor_id`)\
    ON DELETE CASCADE\
    ON UPDATE CASCADE,\
  CONSTRAINT `sales_ibfk_2`\
    FOREIGN KEY (`title_id`)\
    REFERENCES `publications`.`titles` (`title_id`)\
    ON DELETE CASCADE\
    ON UPDATE CASCADE)\
ENGINE = InnoDB\
DEFAULT CHARACTER SET = utf8;\
\
\
-- -----------------------------------------------------\
-- Table `publications`.`titleauthor`\
-- -----------------------------------------------------\
CREATE TABLE IF NOT EXISTS `publications`.`titleauthor` (\
  `au_id` VARCHAR(11) NOT NULL,\
  `title_id` VARCHAR(6) NOT NULL,\
  `au_ord` TINYINT NULL DEFAULT NULL,\
  `royaltyper` INT NULL DEFAULT NULL,\
  PRIMARY KEY (`au_id`, `title_id`),\
  INDEX `titleauthor_title_id` (`title_id` ASC) VISIBLE,\
  CONSTRAINT `titleauthor_ibfk_1`\
    FOREIGN KEY (`title_id`)\
    REFERENCES `publications`.`titles` (`title_id`)\
    ON DELETE CASCADE\
    ON UPDATE CASCADE,\
  CONSTRAINT `titleauthor_ibfk_2`\
    FOREIGN KEY (`au_id`)\
    REFERENCES `publications`.`authors` (`au_id`)\
    ON DELETE CASCADE\
    ON UPDATE CASCADE)\
ENGINE = InnoDB\
DEFAULT CHARACTER SET = utf8;\
\
USE `lab_mysql` ;\
\
-- -----------------------------------------------------\
-- Table `lab_mysql`.`Salespersons`\
-- -----------------------------------------------------\
CREATE TABLE IF NOT EXISTS `lab_mysql`.`Salespersons` (\
  `Staff_ID` CHAR(5) NOT NULL,\
  `Name` VARCHAR(30) NULL DEFAULT NULL,\
  `Store` VARCHAR(20) NULL DEFAULT NULL,\
  PRIMARY KEY (`Staff_ID`),\
  UNIQUE INDEX `Staff_ID_UNIQUE` (`Staff_ID` ASC) VISIBLE)\
ENGINE = InnoDB\
DEFAULT CHARACTER SET = utf8mb4\
COLLATE = utf8mb4_0900_ai_ci;\
\
\
-- -----------------------------------------------------\
-- Table `lab_mysql`.`Invoices`\
-- -----------------------------------------------------\
CREATE TABLE IF NOT EXISTS `lab_mysql`.`Invoices` (\
  `Invoice_Number` MEDIUMINT NOT NULL,\
  `Date` DATETIME NULL DEFAULT NULL,\
  `Car` SMALLINT NULL DEFAULT NULL,\
  `Customer` SMALLINT NULL DEFAULT NULL,\
  `Sales_person` CHAR(5) NULL DEFAULT NULL,\
  PRIMARY KEY (`Invoice_Number`),\
  UNIQUE INDEX `Invoice_Number_UNIQUE` (`Invoice_Number` ASC) VISIBLE,\
  INDEX `Sales_person_idx` (`Sales_person` ASC) VISIBLE,\
  CONSTRAINT `Sales_person`\
    FOREIGN KEY (`Sales_person`)\
    REFERENCES `lab_mysql`.`Salespersons` (`Staff_ID`)\
    ON DELETE NO ACTION\
    ON UPDATE NO ACTION)\
ENGINE = InnoDB\
DEFAULT CHARACTER SET = utf8mb4\
COLLATE = utf8mb4_0900_ai_ci;\
\
\
-- -----------------------------------------------------\
-- Table `lab_mysql`.`Customers`\
-- -----------------------------------------------------\
CREATE TABLE IF NOT EXISTS `lab_mysql`.`Customers` (\
  `Customer_ID` VARCHAR(20) NOT NULL,\
  `Customer_Name` VARCHAR(20) NULL DEFAULT NULL,\
  `Phone_Number` VARCHAR(20) NULL DEFAULT NULL,\
  `email` VARCHAR(40) NULL DEFAULT NULL,\
  `Address` VARCHAR(40) NULL DEFAULT NULL,\
  `City` VARCHAR(20) NULL DEFAULT NULL,\
  `State` VARCHAR(20) NULL DEFAULT NULL,\
  `Country` VARCHAR(20) NULL DEFAULT NULL,\
  `ZIP_Code` VARCHAR(5) NULL DEFAULT NULL,\
  PRIMARY KEY (`Customer_ID`),\
  UNIQUE INDEX `Customer_ID_UNIQUE` (`Customer_ID` ASC) VISIBLE)\
ENGINE = InnoDB\
DEFAULT CHARACTER SET = utf8mb4\
COLLATE = utf8mb4_0900_ai_ci;\
\
\
-- -----------------------------------------------------\
-- Table `lab_mysql`.`Cars`\
-- -----------------------------------------------------\
CREATE TABLE IF NOT EXISTS `lab_mysql`.`Cars` (\
  `VIN` VARCHAR(20) NOT NULL,\
  `Manufacturer` VARCHAR(20) NULL DEFAULT NULL,\
  `Model` VARCHAR(20) NULL DEFAULT NULL,\
  `Year` SMALLINT NULL DEFAULT NULL,\
  `Color` VARCHAR(20) NULL DEFAULT NULL,\
  `Invoices_Invoice_Number` MEDIUMINT NOT NULL,\
  `Customers_Customer_ID` VARCHAR(20) NOT NULL,\
  PRIMARY KEY (`VIN`),\
  UNIQUE INDEX `VIN_UNIQUE` (`VIN` ASC) VISIBLE,\
  INDEX `fk_Cars_Invoices1_idx` (`Invoices_Invoice_Number` ASC) VISIBLE,\
  INDEX `fk_Cars_Customers1_idx` (`Customers_Customer_ID` ASC) VISIBLE,\
  CONSTRAINT `fk_Cars_Invoices1`\
    FOREIGN KEY (`Invoices_Invoice_Number`)\
    REFERENCES `lab_mysql`.`Invoices` (`Invoice_Number`)\
    ON DELETE NO ACTION\
    ON UPDATE NO ACTION,\
  CONSTRAINT `fk_Cars_Customers1`\
    FOREIGN KEY (`Customers_Customer_ID`)\
    REFERENCES `lab_mysql`.`Customers` (`Customer_ID`)\
    ON DELETE NO ACTION\
    ON UPDATE NO ACTION)\
ENGINE = InnoDB\
DEFAULT CHARACTER SET = utf8mb4\
COLLATE = utf8mb4_0900_ai_ci;\
\
\
SET SQL_MODE=@OLD_SQL_MODE;\
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;\
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;\
}