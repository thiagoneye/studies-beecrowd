-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema beecrowd2990
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema beecrowd2990
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `beecrowd2990` DEFAULT CHARACTER SET utf8 ;
USE `beecrowd2990` ;

-- -----------------------------------------------------
-- Table `beecrowd2990`.`departamentos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `beecrowd2990`.`departamentos` (
  `dnumero` INT NOT NULL,
  `dnome` VARCHAR(45) NULL,
  `cpf_gerente` VARCHAR(15) NULL,
  PRIMARY KEY (`dnumero`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `beecrowd2990`.`projetos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `beecrowd2990`.`projetos` (
  `pnumero` INT NOT NULL,
  `pnome` VARCHAR(45) NULL,
  `dnumero` INT NOT NULL,
  PRIMARY KEY (`pnumero`, `dnumero`),
  INDEX `fk_projetos_departamentos1_idx` (`dnumero` ASC) VISIBLE,
  CONSTRAINT `fk_projetos_departamentos1`
    FOREIGN KEY (`dnumero`)
    REFERENCES `beecrowd2990`.`departamentos` (`dnumero`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `beecrowd2990`.`empregados`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `beecrowd2990`.`empregados` (
  `cpf` VARCHAR(15) NOT NULL,
  `enome` VARCHAR(100) NULL,
  `salario` DECIMAL(8,2) NULL,
  `cpf_supervisor` VARCHAR(15) NULL,
  `dnumero` INT NOT NULL,
  PRIMARY KEY (`cpf`, `dnumero`),
  INDEX `fk_empregados_departamentos1_idx` (`dnumero` ASC) VISIBLE,
  CONSTRAINT `fk_empregados_departamentos1`
    FOREIGN KEY (`dnumero`)
    REFERENCES `beecrowd2990`.`departamentos` (`dnumero`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `beecrowd2990`.`trabalha`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `beecrowd2990`.`trabalha` (
  `cpf_emp` VARCHAR(15) NOT NULL,
  `pnumero` INT NOT NULL,
  PRIMARY KEY (`cpf_emp`, `pnumero`),
  INDEX `fk_empregados_projetos_projetos1_idx` (`pnumero` ASC) VISIBLE,
  INDEX `fk_empregados_projetos_empregados_idx` (`cpf_emp` ASC) VISIBLE,
  CONSTRAINT `fk_empregados_projetos_empregados`
    FOREIGN KEY (`cpf_emp`)
    REFERENCES `beecrowd2990`.`empregados` (`cpf`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_empregados_projetos_projetos1`
    FOREIGN KEY (`pnumero`)
    REFERENCES `beecrowd2990`.`projetos` (`pnumero`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
