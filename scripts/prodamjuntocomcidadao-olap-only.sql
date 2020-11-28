-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema prodamjuntocomcidadao
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema prodamjuntocomcidadao
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `prodamjuntocomcidadao` DEFAULT CHARACTER SET utf8 ;
USE `prodamjuntocomcidadao` ;

-- -----------------------------------------------------
-- Table `prodamjuntocomcidadao`.`d_data_siga`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `prodamjuntocomcidadao`.`d_data_siga` ;

CREATE TABLE IF NOT EXISTS `prodamjuntocomcidadao`.`d_data_siga` (
  `cd_data` INT NOT NULL,
  `dt_inicio` DATETIME NULL DEFAULT NULL,
  `dt_final` DATETIME NULL DEFAULT NULL,
  `cd_periodo` INT NULL DEFAULT NULL,
  `cd_semana` INT NULL DEFAULT NULL,
  `sg_dia_semana` VARCHAR(25) NULL DEFAULT NULL,
  `nm_dia_semana` VARCHAR(25) NULL DEFAULT NULL,
  `sg_mes` VARCHAR(25) NULL DEFAULT NULL,
  `nm_mes` VARCHAR(25) NULL DEFAULT NULL,
  `nm_bimestre` VARCHAR(25) NULL DEFAULT NULL,
  `nm_trimestre` VARCHAR(25) NULL DEFAULT NULL,
  `nm_quadrimestre` VARCHAR(25) NULL DEFAULT NULL,
  `nm_semestre` VARCHAR(25) NULL DEFAULT NULL,
  `nr_dia_ano` SMALLINT NULL DEFAULT NULL,
  `nr_dia_semestre` INT NULL DEFAULT NULL,
  `nr_dia_quadrimestre` INT NULL DEFAULT NULL,
  `nr_dia_trimestre` INT NULL DEFAULT NULL,
  `nr_dia_bimestre` INT NULL DEFAULT NULL,
  `nr_dia_mes` INT NULL DEFAULT NULL,
  `nr_dia_quinzena` INT NULL DEFAULT NULL,
  `nr_dia_semana` INT NULL DEFAULT NULL,
  `nr_mes_ano` INT NULL DEFAULT NULL,
  `nr_mes_semestre` INT NULL DEFAULT NULL,
  `nr_mes_quadrimestre` INT NULL DEFAULT NULL,
  `nr_mes_trimestre` INT NULL DEFAULT NULL,
  `nr_mes_bimestre` INT NULL DEFAULT NULL,
  `nr_bimestre_ano` INT NULL DEFAULT NULL,
  `nr_bimestre_semestre` INT NULL DEFAULT NULL,
  `nr_trimestre_ano` INT NULL DEFAULT NULL,
  `nr_trimestre_semestre` INT NULL DEFAULT NULL,
  `nr_quadrimestre_ano` INT NULL DEFAULT NULL,
  `nr_semestre_ano` INT NULL DEFAULT NULL,
  `nr_semana_ano` INT NULL DEFAULT NULL,
  `nr_semana_semestre` INT NULL DEFAULT NULL,
  `nr_semana_quadrimestre` INT NULL DEFAULT NULL,
  `nr_semana_trimestre` INT NULL DEFAULT NULL,
  `nr_semana_bimestre` INT NULL DEFAULT NULL,
  `nr_semana_mes` INT NULL DEFAULT NULL,
  `nr_quinzena_ano` INT NULL DEFAULT NULL,
  `nr_quinzena_semestre` INT NULL DEFAULT NULL,
  `nr_quinzena_quadrimestre` INT NULL DEFAULT NULL,
  `nr_quinzena_trimestre` INT NULL DEFAULT NULL,
  `nr_quinzena_bimestre` INT NULL DEFAULT NULL,
  `nr_quinzena_mes` INT NULL DEFAULT NULL,
  `nr_ano` SMALLINT NULL DEFAULT NULL,
  `nr_ano_mes` INT NULL DEFAULT NULL,
  `sg_estacao_ano` VARCHAR(25) NULL DEFAULT NULL,
  `nm_estacao_ano` VARCHAR(25) NULL DEFAULT NULL,
  `in_dia_util` CHAR(1) NULL DEFAULT NULL,
  `in_inicio_mes` CHAR(1) NULL DEFAULT NULL,
  `in_final_mes` CHAR(1) NULL DEFAULT NULL,
  `in_inicio_ano` CHAR(1) NULL DEFAULT NULL,
  `in_final_ano` CHAR(1) NULL DEFAULT NULL,
  `in_feriado_nacional` CHAR(1) NULL DEFAULT NULL,
  `nr_ano_fiscal` SMALLINT NULL DEFAULT NULL,
  `nr_semestre_fiscal` INT NULL DEFAULT NULL,
  `nr_quadrimestre_fiscal` INT NULL DEFAULT NULL,
  `nr_trimestre_fiscal` INT NULL DEFAULT NULL,
  `nr_bimestre_fiscal` INT NULL DEFAULT NULL,
  `nr_mes_fiscal` INT NULL DEFAULT NULL,
  `nm_semestre_fiscal` VARCHAR(25) NULL DEFAULT NULL,
  `nm_quadrimestre_fiscal` VARCHAR(25) NULL DEFAULT NULL,
  `nm_trimestre_fiscal` VARCHAR(25) NULL DEFAULT NULL,
  `nm_bimestre_fiscal` VARCHAR(25) NULL DEFAULT NULL,
  `dt_inclusao` DATETIME NOT NULL);


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
