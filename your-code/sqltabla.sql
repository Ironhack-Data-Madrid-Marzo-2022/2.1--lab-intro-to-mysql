-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
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
-- Table `cars`.`Vendedores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cars`.`Vendedores` (
  `idVendedor` INT NOT NULL,
  `Nombre` VARCHAR(20) NULL,
  `tienda empresa` VARCHAR(45) NULL,
  PRIMARY KEY (`idVendedor`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cars`.`Clientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cars`.`Clientes` (
  `idClientes` INT NOT NULL,
  `nombre` VARCHAR(45) NULL,
  `numero telefono` INT NULL,
  `correo electrónico` VARCHAR(45) NULL,
  `direccion` VARCHAR(45) NULL,
  `ciudad` VARCHAR(45) NULL,
  `estado/provincia` VARCHAR(45) NULL,
  `pais` VARCHAR(45) NULL,
  `codigo postal` INT(5) NULL,
  PRIMARY KEY (`idClientes`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cars`.`Facturas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cars`.`Facturas` (
  `nº Factura` INT NOT NULL,
  `Fecha` DATETIME NULL,
  `Automovil` VARCHAR(30) NULL,
  `cliente` VARCHAR(45) NULL,
  `vendedor automovil` VARCHAR(45) NULL,
  `Vendedores_idVendedor` INT NOT NULL,
  `Clientes_idClientes` INT NOT NULL,
  PRIMARY KEY (`nº Factura`),
  INDEX `fk_Facturas_Vendedores_idx` (`Vendedores_idVendedor` ASC) VISIBLE,
  INDEX `fk_Facturas_Clientes1_idx` (`Clientes_idClientes` ASC) VISIBLE,
  CONSTRAINT `fk_Facturas_Vendedores`
    FOREIGN KEY (`Vendedores_idVendedor`)
    REFERENCES `cars`.`Vendedores` (`idVendedor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Facturas_Clientes1`
    FOREIGN KEY (`Clientes_idClientes`)
    REFERENCES `cars`.`Clientes` (`idClientes`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cars`.`Coches`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cars`.`Coches` (
  `idtable1` INT NOT NULL,
  `VIN` VARCHAR(45) NULL,
  `fabricante` VARCHAR(45) NULL,
  `coche` VARCHAR(45) NULL,
  `modelo` VARCHAR(45) NULL,
  `Facturas_nº Factura` INT NOT NULL,
  PRIMARY KEY (`idtable1`),
  INDEX `fk_Coches_Facturas1_idx` (`Facturas_nº Factura` ASC) VISIBLE,
  CONSTRAINT `fk_Coches_Facturas1`
    FOREIGN KEY (`Facturas_nº Factura`)
    REFERENCES `cars`.`Facturas` (`nº Factura`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
ClientesClientesCochesClientesidClientesnombre`correo electrónico`nombreidClientesidClientesidClientes