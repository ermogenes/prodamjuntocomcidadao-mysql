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

-- -----------------------------------------------------
-- Data for table `prodamjuntocomcidadao`.`tipo`
-- -----------------------------------------------------
START TRANSACTION;
USE `prodamjuntocomcidadao`;
INSERT INTO `prodamjuntocomcidadao`.`tipo` (`id`, `nome`, `curtidas`) VALUES ('79f74eab-ae30-4304-ada4-c83308576a17', 'Sugestão', 0);
INSERT INTO `prodamjuntocomcidadao`.`tipo` (`id`, `nome`, `curtidas`) VALUES ('2f07116b-0006-4b9b-b4f4-e0c702fd2f04', 'Reclamação', 0);
INSERT INTO `prodamjuntocomcidadao`.`tipo` (`id`, `nome`, `curtidas`) VALUES ('3a915417-b955-48e7-8398-791076d4d258', 'Elogio', 0);

COMMIT;


-- -----------------------------------------------------
-- Data for table `prodamjuntocomcidadao`.`local`
-- -----------------------------------------------------
START TRANSACTION;
USE `prodamjuntocomcidadao`;
INSERT INTO `prodamjuntocomcidadao`.`local` (`id`, `nome`, `curtidas`) VALUES ('5337ec2c-e435-4a0d-9885-d6d46cdb2ffd', 'Zona Norte', 0);
INSERT INTO `prodamjuntocomcidadao`.`local` (`id`, `nome`, `curtidas`) VALUES ('f7e13a2f-d107-4aad-9ccb-af93e8de9285', 'Zona Leste', 0);
INSERT INTO `prodamjuntocomcidadao`.`local` (`id`, `nome`, `curtidas`) VALUES ('247aa85d-731d-4c3e-9622-035097a85aaa', 'Zona Sul', 0);
INSERT INTO `prodamjuntocomcidadao`.`local` (`id`, `nome`, `curtidas`) VALUES ('f69b3f0d-bfe5-43af-8b9d-de7da39b91c1', 'Zona Oeste', 0);
INSERT INTO `prodamjuntocomcidadao`.`local` (`id`, `nome`, `curtidas`) VALUES ('abc88e69-389c-48b5-bebb-82aa8561ea45', 'Centro', 0);
INSERT INTO `prodamjuntocomcidadao`.`local` (`id`, `nome`, `curtidas`) VALUES ('9cb29458-dd46-43df-8b4a-dc1421cc3f83', 'Cidade de São Paulo', 0);

COMMIT;


-- -----------------------------------------------------
-- Data for table `prodamjuntocomcidadao`.`tema`
-- -----------------------------------------------------
START TRANSACTION;
USE `prodamjuntocomcidadao`;
INSERT INTO `prodamjuntocomcidadao`.`tema` (`id`, `nome`, `curtidas`) VALUES ('e94ae9c5-fae6-4495-a15b-1c59b9105c4e', 'Saúde', 0);
INSERT INTO `prodamjuntocomcidadao`.`tema` (`id`, `nome`, `curtidas`) VALUES ('03c7afbe-ff77-4d44-8a3e-aea5e61f9f3c', 'Educação', 0);
INSERT INTO `prodamjuntocomcidadao`.`tema` (`id`, `nome`, `curtidas`) VALUES ('9d40b6cd-9fd4-4ec9-b156-be20d2cc7bbe', 'Transporte', 0);
INSERT INTO `prodamjuntocomcidadao`.`tema` (`id`, `nome`, `curtidas`) VALUES ('ab303d1e-1549-43d7-a04c-76dc496f39cc', 'Segurança', 0);
INSERT INTO `prodamjuntocomcidadao`.`tema` (`id`, `nome`, `curtidas`) VALUES ('6b87cb26-a9f2-4940-85ed-57b2e89e0ce6', 'Assistência Social', 0);
INSERT INTO `prodamjuntocomcidadao`.`tema` (`id`, `nome`, `curtidas`) VALUES ('202eb987-1c13-4114-b295-392cd4c7269a', 'Economia', 0);

COMMIT;

