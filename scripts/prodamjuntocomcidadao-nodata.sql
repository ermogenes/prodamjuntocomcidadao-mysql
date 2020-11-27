-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema prodamjuntocomcidadao
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `prodamjuntocomcidadao` ;

-- -----------------------------------------------------
-- Schema prodamjuntocomcidadao
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `prodamjuntocomcidadao` DEFAULT CHARACTER SET utf8 ;
USE `prodamjuntocomcidadao` ;

-- -----------------------------------------------------
-- Table `prodamjuntocomcidadao`.`tipo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `prodamjuntocomcidadao`.`tipo` ;

CREATE TABLE IF NOT EXISTS `prodamjuntocomcidadao`.`tipo` (
  `id` VARCHAR(36) NOT NULL,
  `nome` VARCHAR(50) NOT NULL,
  `curtidas` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `prodamjuntocomcidadao`.`local`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `prodamjuntocomcidadao`.`local` ;

CREATE TABLE IF NOT EXISTS `prodamjuntocomcidadao`.`local` (
  `id` VARCHAR(36) NOT NULL,
  `nome` VARCHAR(50) NOT NULL,
  `curtidas` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `prodamjuntocomcidadao`.`tema`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `prodamjuntocomcidadao`.`tema` ;

CREATE TABLE IF NOT EXISTS `prodamjuntocomcidadao`.`tema` (
  `id` VARCHAR(36) NOT NULL,
  `nome` VARCHAR(50) NOT NULL,
  `curtidas` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `prodamjuntocomcidadao`.`mensagem`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `prodamjuntocomcidadao`.`mensagem` ;

CREATE TABLE IF NOT EXISTS `prodamjuntocomcidadao`.`mensagem` (
  `id` VARCHAR(36) NOT NULL,
  `texto` VARCHAR(400) NOT NULL,
  `curtidas` INT NOT NULL,
  `tipo_id` VARCHAR(36) NULL,
  `local_id` VARCHAR(36) NULL,
  `tema_id` VARCHAR(36) NULL,
  `data` VARCHAR(50) NOT NULL,
  `sentiment_score` DOUBLE NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_mensagem_tipo_idx` (`tipo_id` ASC) VISIBLE,
  INDEX `fk_mensagem_local1_idx` (`local_id` ASC) VISIBLE,
  INDEX `fk_mensagem_tema1_idx` (`tema_id` ASC) VISIBLE,
  CONSTRAINT `fk_mensagem_tipo`
    FOREIGN KEY (`tipo_id`)
    REFERENCES `prodamjuntocomcidadao`.`tipo` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_mensagem_local1`
    FOREIGN KEY (`local_id`)
    REFERENCES `prodamjuntocomcidadao`.`local` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_mensagem_tema1`
    FOREIGN KEY (`tema_id`)
    REFERENCES `prodamjuntocomcidadao`.`tema` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
