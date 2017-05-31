SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';
-- -----------------------------------------------------
-- Schema dataBase
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `dataBase` DEFAULT CHARACTER SET utf8 ;
USE `dataBase` ;


-- -----------------------------------------------------
-- Table `dataBase`.`Clients`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dataBase`.`Clients` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `discription` VARCHAR(45) NULL,
  `order_id` INT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dataBase`.`Orders`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dataBase`.`Orders` (
  `id` INT NOT NULL,
  `Discription` VARCHAR(45) NULL,
  `Clients_id` INT NOT NULL,
  `staff_id` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Orders_Clients_idx` (`Clients_id` ASC),
  CONSTRAINT `fk_Orders_Clients`
    FOREIGN KEY (`Clients_id`)
    REFERENCES `dataBase`.`Clients` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dataBase`.`taff`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dataBase`.`Staff` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `discription` VARCHAR(45) NULL,
  `Orders_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_staff_Orders1_idx` (`Orders_id` ASC),
  CONSTRAINT `fk_staff_Orders1`
    FOREIGN KEY (`Orders_id`)
    REFERENCES `dataBase`.`Orders` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
