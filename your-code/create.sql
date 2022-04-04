-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema coches2
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema lawena
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema cars
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema cars
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `cars` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `cars` ;

-- -----------------------------------------------------
-- Table `cars`.`Clientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cars`.`Clientes` (
  `idClientes` INT NOT NULL,
  `nombre` VARCHAR(45) NULL DEFAULT NULL,
  `numero telefono` INT NULL DEFAULT NULL,
  `correo electrónico` VARCHAR(45) NULL DEFAULT NULL,
  `direccion` VARCHAR(45) NULL DEFAULT NULL,
  `ciudad` VARCHAR(45) NULL DEFAULT NULL,
  `estado/provincia` VARCHAR(45) NULL DEFAULT NULL,
  `pais` VARCHAR(45) NULL DEFAULT NULL,
  `codigo postal` INT NULL DEFAULT NULL,
  PRIMARY KEY (`idClientes`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `cars`.`Vendedores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cars`.`Vendedores` (
  `idVendedor` INT NOT NULL,
  `Nombre` VARCHAR(20) NULL DEFAULT NULL,
  `tienda empresa` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idVendedor`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `cars`.`Facturas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cars`.`Facturas` (
  `nº Factura` INT NOT NULL,
  `Fecha` DATETIME NULL DEFAULT NULL,
  `Automovil` VARCHAR(30) NULL DEFAULT NULL,
  `cliente` VARCHAR(45) NULL DEFAULT NULL,
  `vendedor automovil` VARCHAR(45) NULL DEFAULT NULL,
  `Vendedores_idVendedor` INT NOT NULL,
  `Clientes_idClientes` INT NOT NULL,
  PRIMARY KEY (`nº Factura`),
  INDEX `fk_Facturas_Vendedores_idx` (`Vendedores_idVendedor` ASC) VISIBLE,
  INDEX `fk_Facturas_Clientes1_idx` (`Clientes_idClientes` ASC) VISIBLE,
  CONSTRAINT `fk_Facturas_Clientes1`
    FOREIGN KEY (`Clientes_idClientes`)
    REFERENCES `cars`.`Clientes` (`idClientes`),
  CONSTRAINT `fk_Facturas_Vendedores`
    FOREIGN KEY (`Vendedores_idVendedor`)
    REFERENCES `cars`.`Vendedores` (`idVendedor`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `cars`.`Coches`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cars`.`Coches` (
  `idtable1` INT NOT NULL,
  `VIN` VARCHAR(45) NULL DEFAULT NULL,
  `fabricante` VARCHAR(45) NULL DEFAULT NULL,
  `coche` VARCHAR(45) NULL DEFAULT NULL,
  `modelo` VARCHAR(45) NULL DEFAULT NULL,
  `Facturas_nº Factura` INT NOT NULL,
  `ano` DATETIME NULL,
  `Cochescol` VARCHAR(45) NULL,
  PRIMARY KEY (`idtable1`),
  INDEX `fk_Coches_Facturas1_idx` (`Facturas_nº Factura` ASC) VISIBLE,
  CONSTRAINT `fk_Coches_Facturas1`
    FOREIGN KEY (`Facturas_nº Factura`)
    REFERENCES `cars`.`Facturas` (`nº Factura`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;