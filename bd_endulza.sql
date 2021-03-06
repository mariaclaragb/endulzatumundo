CREATE DATABASE endulza_tu_mundo;

CREATE TABLE `endulza_tu_mundo`.`persona` (
  `idpersona` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL,
  `direccion` VARCHAR(45) NULL,
  `telefono` VARCHAR(45) NULL,
  PRIMARY KEY (`idpersona`));
INSERT INTO `endulza_tu_mundo`.`persona` (`nombre`, `direccion`, `telefono`) VALUES ('Stefania', 'calle101#24-31', '5094746');
INSERT INTO `endulza_tu_mundo`.`persona` (`nombre`, `direccion`, `telefono`) VALUES ('Geraldine', 'calle101C#76A53', '5098287');
INSERT INTO `endulza_tu_mundo`.`persona` (`nombre`, `direccion`, `telefono`) VALUES ('Maria clara Gutierrez Bedoya', 'Cra74B#98-74', '5084888');
INSERT INTO `endulza_tu_mundo`.`persona` (`nombre`, `direccion`, `telefono`) VALUES ('Anyi Molina', 'calle101A#84-87', '2378507');
INSERT INTO `endulza_tu_mundo`.`persona` (`nombre`, `direccion`, `telefono`) VALUES ('vanessa Borja', 'Calle99#74B17', '5057406');

CREATE TABLE `endulza_tu_mundo`.`opciones` (
  `idopciones` INT NOT NULL AUTO_INCREMENT,
  `opciones` VARCHAR(45) NULL,
  PRIMARY KEY (`idopciones`));
INSERT INTO `endulza_tu_mundo`.`opciones` (`opciones`) VALUES ('postre');
INSERT INTO `endulza_tu_mundo`.`opciones` (`opciones`) VALUES ('seco');
INSERT INTO `endulza_tu_mundo`.`opciones` (`opciones`) VALUES ('refrigerado');

  CREATE TABLE `endulza_tu_mundo`.`sabor` (
  `idsabor` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL,
  PRIMARY KEY (`idsabor`));
INSERT INTO `endulza_tu_mundo`.`sabor` (`nombre`) VALUES ('fresa');
INSERT INTO `endulza_tu_mundo`.`sabor` (`nombre`) VALUES ('fresa con chocolate');
INSERT INTO `endulza_tu_mundo`.`sabor` (`nombre`) VALUES ('chocolate');
INSERT INTO `endulza_tu_mundo`.`sabor` (`nombre`) VALUES ('vainilla');
INSERT INTO `endulza_tu_mundo`.`sabor` (`nombre`) VALUES ('arequipe');
INSERT INTO `endulza_tu_mundo`.`sabor` (`nombre`) VALUES ('tres leches');
INSERT INTO `endulza_tu_mundo`.`sabor` (`nombre`) VALUES ('bateado de mora');
INSERT INTO `endulza_tu_mundo`.`sabor` (`nombre`) VALUES ('brownie');

CREATE TABLE `endulza_tu_mundo`.`pedido` (
  `idpedido` INT NOT NULL AUTO_INCREMENT,
  `relleno` VARCHAR(45) NULL,
  PRIMARY KEY (`idpedido`));
ALTER TABLE `endulza_tu_mundo`.`pedido` 
ADD COLUMN `persona` INT(11) NULL AFTER `relleno`,
ADD COLUMN `opcion` INT(11) NULL AFTER `persona`,
ADD COLUMN `sabor` INT(11) NULL AFTER `opcion`,
ADD COLUMN `molde` INT(11) NULL AFTER `sabor`,
ADD COLUMN `porciones` INT(11) NULL AFTER `molde`;

INSERT INTO `endulza_tu_mundo`.`pedido` (`relleno`) VALUES ('chocolate');
INSERT INTO `endulza_tu_mundo`.`pedido` (`relleno`) VALUES ('fresa');
INSERT INTO `endulza_tu_mundo`.`pedido` (`relleno`) VALUES ('vainilla');
INSERT INTO `endulza_tu_mundo`.`pedido` (`relleno`) VALUES ('tres leches');
INSERT INTO `endulza_tu_mundo`.`pedido` (`relleno`) VALUES ('lecherita');
INSERT INTO `endulza_tu_mundo`.`pedido` (`relleno`) VALUES ('arequipe');

CREATE TABLE `endulza_tu_mundo`.`molde` (
  `idmolde` INT NOT NULL AUTO_INCREMENT,
  `tipo` VARCHAR(45) NULL,
  PRIMARY KEY (`idmolde`));

INSERT INTO `endulza_tu_mundo`.`molde` (`tipo`) VALUES ('redondo');
INSERT INTO `endulza_tu_mundo`.`molde` (`tipo`) VALUES ('triamgular');
INSERT INTO `endulza_tu_mundo`.`molde` (`tipo`) VALUES ('cuadrada');
INSERT INTO `endulza_tu_mundo`.`molde` (`tipo`) VALUES ('espiral');

CREATE TABLE `endulza_tu_mundo`.`porciones` (
  `idporciones` INT NOT NULL AUTO_INCREMENT,
  `cantidad` VARCHAR(45) NULL,
  PRIMARY KEY (`idporciones`));
  
INSERT INTO `endulza_tu_mundo`.`porciones` (`cantidad`) VALUES ('5-10');
INSERT INTO `endulza_tu_mundo`.`porciones` (`cantidad`) VALUES ('10-15');
INSERT INTO `endulza_tu_mundo`.`porciones` (`cantidad`) VALUES ('15-20');
INSERT INTO `endulza_tu_mundo`.`porciones` (`cantidad`) VALUES ('20-25');
INSERT INTO `endulza_tu_mundo`.`porciones` (`cantidad`) VALUES ('25-30');
INSERT INTO `endulza_tu_mundo`.`porciones` (`cantidad`) VALUES ('30-35');
INSERT INTO `endulza_tu_mundo`.`porciones` (`cantidad`) VALUES ('35-40');
INSERT INTO `endulza_tu_mundo`.`porciones` (`cantidad`) VALUES ('40-45');
INSERT INTO `endulza_tu_mundo`.`porciones` (`cantidad`) VALUES ('45-50');

UPDATE `endulza_tu_mundo`.`pedido` SET `persona`='3', `opcion`='3', `sabor`='4', `molde`='1', `porciones`='7' WHERE `idpedido`='1';




  
  

  