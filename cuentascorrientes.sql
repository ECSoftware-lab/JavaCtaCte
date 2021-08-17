/*
SQLyog Ultimate v11.33 (64 bit)
MySQL - 5.0.45-community-nt : Database - cuentascorrientes
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`cuentascorrientes` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `cuentascorrientes`;

/*Table structure for table `compras` */

DROP TABLE IF EXISTS `compras`;

CREATE TABLE `compras` (
  `idcompras` int(11) NOT NULL auto_increment,
  `Estado` varchar(45) NOT NULL default 'CREADA',
  `IdProveedores` int(10) unsigned NOT NULL default '1',
  `Fecha` date default NULL,
  `Total` decimal(13,2) NOT NULL default '0.00',
  `Acuenta` decimal(13,2) NOT NULL default '0.00',
  `Saldo` decimal(13,2) NOT NULL default '0.00',
  `idencargado` int(10) unsigned NOT NULL,
  `TipoRemito` varchar(15) NOT NULL default '',
  `NRemito` varchar(15) NOT NULL default '',
  `FechaIngreso` date default NULL,
  `unico` varchar(45) NOT NULL default '',
  `dumy` int(11) NOT NULL default '1',
  PRIMARY KEY  (`idcompras`),
  UNIQUE KEY `Index_2` (`unico`),
  KEY `Index_3` (`IdProveedores`),
  KEY `Index_4` (`Fecha`),
  KEY `Index_5` (`IdProveedores`),
  KEY `Index_6` (`TipoRemito`,`NRemito`),
  CONSTRAINT `IdXProdCompra` FOREIGN KEY (`IdProveedores`) REFERENCES `proveedores` (`idproveedores`)
) ENGINE=InnoDB AUTO_INCREMENT=5036 DEFAULT CHARSET=latin1;

/*Data for the table `compras` */

insert  into `compras`(`idcompras`,`Estado`,`IdProveedores`,`Fecha`,`Total`,`Acuenta`,`Saldo`,`idencargado`,`TipoRemito`,`NRemito`,`FechaIngreso`,`unico`,`dumy`) values (5018,'CREADA',1,'2020-07-09','20.00','0.00','20.00',8,'RX','000100000003','2020-07-09','63a969c2-c21c-11ea-979c-101f74fd7f0c',1),(5019,'FINALIZADA',1,'2020-07-14','300.00','50.00','250.00',8,'RX','000100000004','2020-07-14','8a8206d5-c606-11ea-9747-101f74fd7f0c',1),(5020,'CREADA',1,'2020-07-14','20.00','0.00','20.00',8,'RX','000100000005','2020-07-14','da14d42e-c612-11ea-9747-101f74fd7f0c',1),(5021,'FINALIZADA',1,'2020-07-14','-20.00','-10.00','-10.00',8,'RD','000100000006','2020-07-14','34c7f2c4-c613-11ea-9747-101f74fd7f0c',1),(5023,'CREADA',1,'2020-07-14','500.00','0.00','500.00',8,'RX','000100000007','2020-07-14','2fc97aab-c614-11ea-9747-101f74fd7f0c',1),(5024,'FINALIZADA',1,'2020-07-14','-500.00','-100.00','-400.00',8,'RD','000100000008','2020-07-14','89fdfba0-c615-11ea-9747-101f74fd7f0c',1),(5026,'FINALIZADA',5,'2020-07-15','750.00','0.00','750.00',8,'RX','000100000002','2020-07-15','9283962f-c704-11ea-9840-101f74fd7f0c',1),(5027,'FINALIZADA',5,'2020-07-16','0.00','0.00','0.00',8,'RX','000100000003','2020-07-16','61fd8b1b-c7b2-11ea-98cc-101f74fd7f0c',1),(5028,'FINALIZADA',1,'2020-07-16','-1000.00','0.00','-1000.00',8,'RD','000100000004','2020-07-16','6a483833-c7b8-11ea-98cc-101f74fd7f0c',1),(5029,'CREADA',5,'2020-08-25','0.00','0.00','0.00',8,'RX','000100000005','2020-08-25','d4eb7cab-e713-11ea-95d9-101f74fd7f0c',1),(5030,'CREADA',1,'2020-08-25','0.00','0.00','0.00',8,'RX','000100000009','2020-08-25','957ea801-e719-11ea-95d9-101f74fd7f0c',1),(5031,'FINALIZADA',1,'2020-08-25','110.00','0.00','110.00',8,'RX','000100000010','2020-08-25','681eef97-e71a-11ea-95d9-101f74fd7f0c',1),(5032,'CREADA',11,'2020-11-04','0.00','0.00','0.00',32,'RX','000000000000','2020-11-04','8585dff7-704c-1039-a3a3-269fa9754b1a',1),(5033,'FINALIZADA',14,'2020-11-09','0.00','0.00','0.00',32,'RX','000000000000','2020-11-09','56e267ca-742a-1039-bece-b67c4a0021a3',1),(5034,'CREADA',1,'2020-11-09','4003.20','0.00','4003.20',32,'FA','000100000011','2020-11-09','16b8b18a-742c-1039-bece-b67c4a0021a3',1),(5035,'CREADA',1,'2020-11-09','4000.20','0.00','4000.20',32,'RX','000100000012','2020-11-09','808ad451-742d-1039-bece-b67c4a0021a3',1);

/*Table structure for table `confiespecial` */

DROP TABLE IF EXISTS `confiespecial`;

CREATE TABLE `confiespecial` (
  `idconfiespecial` int(10) unsigned NOT NULL auto_increment,
  `NinimoTemporada` double NOT NULL,
  `GValidarCliente` varchar(2) character set utf8 NOT NULL default 'SI',
  `MinClienteActivo` double NOT NULL,
  `DiasClienteInactivo` int(11) NOT NULL default '31',
  `ReplicaClientes` int(4) NOT NULL default '0',
  `SitTieneSucursales` int(4) NOT NULL default '0',
  `NumeroDepositos` int(11) NOT NULL,
  `VariosVendedore` int(4) NOT NULL,
  `VendedorPuedeImpri` int(4) NOT NULL default '0',
  `VerStockCritico` int(11) NOT NULL COMMENT 'id empleado',
  `TiempoStockCritico` int(11) NOT NULL default '30',
  `MarcarClientes` smallint(6) NOT NULL,
  `ConTarjeta` int(11) NOT NULL default '0',
  `PagaConEfec` int(11) NOT NULL default '0',
  `RestringirListaPre` varchar(45) character set utf8 default NULL,
  `GAppTitle` varchar(45) character set utf8 NOT NULL default 'ControlStock',
  `AgregarListasPrec` tinyint(4) NOT NULL default '0',
  `Financiable` tinyint(4) NOT NULL default '0',
  `DiasCambio` int(11) NOT NULL default '15',
  `GTipoApp` varchar(45) character set utf8 NOT NULL default '',
  `MaxPedidoSPasaCaja` int(11) NOT NULL default '10',
  `VariosClienteCasual` int(11) NOT NULL default '0',
  PRIMARY KEY  (`idconfiespecial`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `confiespecial` */

insert  into `confiespecial`(`idconfiespecial`,`NinimoTemporada`,`GValidarCliente`,`MinClienteActivo`,`DiasClienteInactivo`,`ReplicaClientes`,`SitTieneSucursales`,`NumeroDepositos`,`VariosVendedore`,`VendedorPuedeImpri`,`VerStockCritico`,`TiempoStockCritico`,`MarcarClientes`,`ConTarjeta`,`PagaConEfec`,`RestringirListaPre`,`GAppTitle`,`AgregarListasPrec`,`Financiable`,`DiasCambio`,`GTipoApp`,`MaxPedidoSPasaCaja`,`VariosClienteCasual`) values (1,3,'SI',800,16,1,1,5,1,0,0,30,0,1,0,NULL,'ControlStock',0,0,15,'GESTIONINDUMENTARIA2',10,0);

/*Table structure for table `ctacteprove` */

DROP TABLE IF EXISTS `ctacteprove`;

CREATE TABLE `ctacteprove` (
  `idCtaCteProve` int(11) unsigned NOT NULL auto_increment,
  `Fecha` date NOT NULL,
  `FechaIng` date NOT NULL,
  `idProveedor` int(11) unsigned NOT NULL,
  `idcompra` int(11) unsigned NOT NULL,
  `idPagoProve` int(11) unsigned NOT NULL default '0',
  `Debe` decimal(13,2) NOT NULL default '0.00',
  `Haber` decimal(13,2) NOT NULL default '0.00',
  `idresponsable` int(11) NOT NULL,
  `Tipo` varchar(45) NOT NULL default '-',
  `unico` varchar(45) NOT NULL default '-',
  `NFactura` varchar(45) default '-',
  `Descripcion` varchar(45) NOT NULL default 'COMPRA' COMMENT 'compra devolucion pago',
  `SaldoAnterio` double NOT NULL default '0',
  `SaldoActual` double NOT NULL default '0',
  PRIMARY KEY  (`idCtaCteProve`),
  KEY `IdxCtaCteIdProve` (`idProveedor`),
  CONSTRAINT `FK_IdProveCtaCte` FOREIGN KEY (`idProveedor`) REFERENCES `proveedores` (`idproveedores`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

/*Data for the table `ctacteprove` */

insert  into `ctacteprove`(`idCtaCteProve`,`Fecha`,`FechaIng`,`idProveedor`,`idcompra`,`idPagoProve`,`Debe`,`Haber`,`idresponsable`,`Tipo`,`unico`,`NFactura`,`Descripcion`,`SaldoAnterio`,`SaldoActual`) values (16,'2020-07-14','2021-08-10',1,5019,0,'0.00','300.00',8,'RX','8a8206d5-c606-11ea-9747-101f74fd7f0c','000100000004','COMPRA',0,0),(21,'2020-08-25','2021-08-11',1,5031,0,'0.00','110.00',8,'RX','681eef97-e71a-11ea-95d9-101f74fd7f0c','000100000010','COMPRA',-280,0),(22,'2021-08-12','2021-08-12',1,0,3,'200.00','0.00',8,'PAGO EF','-',NULL,'PAGO',-390,0),(23,'2021-08-12','2021-08-12',1,0,4,'100.00','0.00',8,'PAGO EF','-','7484151212','PAGO',-190,0),(26,'2020-07-14','2021-08-12',1,5021,0,'20.00','0.00',8,'RD','34c7f2c4-c613-11ea-9747-101f74fd7f0c','000100000006','DEVOLUCION',-110,0),(27,'2020-07-14','2021-08-12',1,5024,0,'500.00','0.00',8,'RD','89fdfba0-c615-11ea-9747-101f74fd7f0c','000100000008','DEVOLUCION',-90,0),(28,'2020-07-16','2021-08-12',1,5028,0,'1000.00','0.00',8,'RD','6a483833-c7b8-11ea-98cc-101f74fd7f0c','000100000004','DEVOLUCION',410,0),(29,'2021-08-16','2021-08-16',1,0,5,'10.20','0.00',10,'EFECTIVO','--','ncompr','PAGO',1410,0),(30,'2021-08-16','2021-08-16',1,0,6,'10.20','0.00',10,'EFECTIVO','--','ASDF234','PAGO',1420.2,0),(31,'2021-08-16','2021-08-16',10,0,7,'10.50','0.00',10,'EFECTIVO','--','','PAGO',0,0),(32,'2021-08-16','2021-08-16',10,0,8,'10.50','0.00',10,'EFECTIVO','--','2021-08-16','PAGO',10.5,0),(33,'2021-08-02','2021-08-16',1,0,9,'0.00','0.00',10,'EFECTIVO','--','NNASDF484545','PAGO',1430.4,0),(34,'2021-08-09','2021-08-16',1,0,10,'152.50','0.00',10,'TRANSF','--','1512145212','PAGO',1430.4,0);

/*Table structure for table `proveedores` */

DROP TABLE IF EXISTS `proveedores`;

CREATE TABLE `proveedores` (
  `idproveedores` int(10) unsigned NOT NULL auto_increment,
  `unico` varchar(45) NOT NULL default '',
  `RazonSocial` varchar(45) NOT NULL default '',
  `Cuit` varchar(15) NOT NULL default '',
  `Provincia` varchar(45) NOT NULL default '',
  `Localidad` varchar(45) NOT NULL default '''-''',
  `domicilio` varchar(100) NOT NULL default '',
  `telefono` varchar(15) NOT NULL default '',
  `celular` varchar(15) NOT NULL default '',
  `Email` varchar(50) NOT NULL default '-',
  `FechaAlta` date NOT NULL,
  `RespAlta` int(11) NOT NULL,
  `hora` time NOT NULL,
  `OBS` varchar(245) default '-',
  `Baja` varchar(2) NOT NULL default 'NO',
  `FechaMod` date default NULL,
  `RespMod` int(10) unsigned NOT NULL default '0',
  `CLAVE` varchar(45) NOT NULL default '-',
  `CodBarra` varchar(45) NOT NULL default '-',
  `InisiaSistema` varchar(2) NOT NULL default 'NO',
  `FechaNac` date default NULL,
  `Cargo` varchar(45) NOT NULL default '-',
  `CodPostal` varchar(15) NOT NULL default '-',
  `LugarAlta` varchar(45) default NULL,
  `Piso` varchar(3) default NULL,
  `Depto` varchar(3) default NULL,
  `CreditoAf` decimal(13,2) unsigned NOT NULL default '0.00',
  PRIMARY KEY  (`idproveedores`),
  UNIQUE KEY `IDXCuit` (`Cuit`),
  UNIQUE KEY `IDXApeNom` (`RazonSocial`),
  KEY `FKProvProvee` (`Provincia`),
  KEY `FKLocProvee` (`Localidad`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

/*Data for the table `proveedores` */

insert  into `proveedores`(`idproveedores`,`unico`,`RazonSocial`,`Cuit`,`Provincia`,`Localidad`,`domicilio`,`telefono`,`celular`,`Email`,`FechaAlta`,`RespAlta`,`hora`,`OBS`,`Baja`,`FechaMod`,`RespMod`,`CLAVE`,`CodBarra`,`InisiaSistema`,`FechaNac`,`Cargo`,`CodPostal`,`LugarAlta`,`Piso`,`Depto`,`CreditoAf`) values (1,'0258b964-f456-1035-bfa3-2bdedcb0de46','PRUEBA ','1515212','CAPITAL FEDERAL','C. Autonoma de Bs As','DIRECC','734573457','','','2017-09-26',1411371969,'18:59:01','','NO','2017-09-26',1411371969,'4a7d1ed414474e4033ac29ccb8653d9b','','','2017-09-26','-','0',NULL,NULL,NULL,'1520.00'),(10,'a5279e76-cd2e-11ea-ac46-2c6e850cee6d','PRUEBA2','512121212','BUENOS AIRES','12 DE AGOSTO','ASDFASDF','3477357','','','2020-07-23',1411371969,'18:51:21','','NO','2020-07-23',1411371969,'814f06ab7f40b2cff77f2c7bdffd3415','','','2020-07-23','-','2701','CENTRAL','','','0.00'),(11,'caac2e11-cd2e-11ea-ac46-2c6e850cee6d','MOLINOS','30709654914','CORDOBA','ACHIRAS','-','3475757','','','2020-07-23',1411371969,'18:52:24','','NO','2020-07-23',1411371969,'814f06ab7f40b2cff77f2c7bdffd3415','','','2020-07-23','-','5833','CENTRAL','','','0.00'),(14,'36949e17-cdd0-11ea-ac46-2c6e850cee6d','BELMONTE','0000032655','TUCUMAN','SAN ANDRES (G)','SAN ANDRES','546546532462','','','2020-07-24',1411371969,'14:07:54','','NO','2020-07-24',1411371969,'814f06ab7f40b2cff77f2c7bdffd3415','','','2020-07-24','-','4122','CENTRAL','','','0.00'),(18,'f70ff097-cde2-11ea-ac46-2c6e850cee6d','DISTRI MAP','30711685312','TUCUMAN','SAN MIGUEL DE TUCUMAN','-','35634565','','','2020-07-24',1411371969,'16:22:07','','NO','2020-07-24',1411371969,'814f06ab7f40b2cff77f2c7bdffd3415','','','2020-07-24','-','4000','CENTRAL','','','0.00'),(19,'14e30c96-cde3-11ea-ac46-2c6e850cee6d','GALIAS SRL','30715034588','TUCUMAN','SAN MIGUEL DE TUCUMAN','COLON 1108','3456565','','','2020-07-24',1411371969,'16:22:57','\r\n','NO','2020-07-24',1411371969,'814f06ab7f40b2cff77f2c7bdffd3415','','','2020-07-24','-','4000','CENTRAL','','','0.00'),(20,'4dd6d5d3-cde3-11ea-ac46-2c6e850cee6d','BRAKO DISTR','30708552360','TUCUMAN','SAN MIGUEL DE TUCUMAN','RUTA 315','4563456','','','2020-07-24',1411371969,'16:24:33','\r\n\r\n','NO','2020-07-24',1411371969,'814f06ab7f40b2cff77f2c7bdffd3415','','','2020-07-24','-','4000','CENTRAL','','','0.00'),(21,'63ac4148-cde3-11ea-ac46-2c6e850cee6d','CASAS SRL','33716258489','TUCUMAN','SAN MIGUEL DE TUCUMAN','AV CIRCUNVALACION 1897','35634573467','','','2020-07-24',1411371969,'16:25:10','\r\n\r\n\r\n','NO','2020-07-24',1411371969,'814f06ab7f40b2cff77f2c7bdffd3415','','','2020-07-24','-','4000','CENTRAL','','','0.00'),(24,'bd335bb1-cde3-11ea-ac46-2c6e850cee6d','TRADE ACTIVITIES SRL','30715632671','TUCUMAN','SAN MIGUEL DE TUCUMAN','-','347','','','2020-07-24',1411371969,'16:27:40','\r\n\r\n\r\n\r\n','NO','2020-07-24',1411371969,'814f06ab7f40b2cff77f2c7bdffd3415','','','2020-07-24','-','4000','CENTRAL','','','0.00'),(25,'052a2833-ce8e-11ea-ac46-2c6e850cee6d','SERENISIMA','30707210385','TUCUMAN','SAN MIGUEL DE TUCUMAN','-','357','','','2020-07-25',1411371969,'12:46:35','','NO','2020-07-25',1411371969,'814f06ab7f40b2cff77f2c7bdffd3415','','','2020-07-25','-','4000','CENTRAL','','','0.00'),(26,'d3bbf381-70c2-1039-a3a3-269fa9754b1a','MARGARINA','03115151555','TUCUMAN','SAN MIGUEL DE TUCUMAN','TUCUMAN','3745467','','','2020-11-05',1411371969,'11:24:42','','NO','2020-11-05',1411371969,'814f06ab7f40b2cff77f2c7bdffd3415','','','2020-11-05','-','4000','CENTRAL','','','0.00');

/*Table structure for table `proveedoresesp` */

DROP TABLE IF EXISTS `proveedoresesp`;

CREATE TABLE `proveedoresesp` (
  `IdProveedoresesp` int(11) unsigned NOT NULL auto_increment,
  `IdProveedores` int(10) unsigned NOT NULL,
  `saldo` double(13,2) NOT NULL default '0.00',
  `debe` double(13,2) NOT NULL default '0.00',
  `haber` double(13,2) NOT NULL default '0.00',
  `LimtCtaCte` double(13,2) NOT NULL default '0.00',
  `descuento` double(13,2) NOT NULL default '0.00',
  `saldoinicio` double(13,2) NOT NULL default '0.00',
  `tipoproveedor` varchar(15) NOT NULL default '-',
  `RespIva` int(11) NOT NULL default '67',
  `ConNumeracion` varchar(2) NOT NULL default 'NO',
  `UltimoNumero` varchar(15) NOT NULL default '0',
  PRIMARY KEY  (`IdProveedoresesp`),
  UNIQUE KEY `IDXPrdoEspUnic` (`IdProveedores`),
  KEY `IDXRespProve` (`RespIva`),
  CONSTRAINT `FKProvEspecial` FOREIGN KEY (`IdProveedores`) REFERENCES `proveedores` (`idproveedores`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `proveedoresesp` */

insert  into `proveedoresesp`(`IdProveedoresesp`,`IdProveedores`,`saldo`,`debe`,`haber`,`LimtCtaCte`,`descuento`,`saldoinicio`,`tipoproveedor`,`RespIva`,`ConNumeracion`,`UltimoNumero`) values (1,1,0.00,0.00,0.00,0.00,0.00,0.00,'-',67,'NO','0'),(2,10,0.00,0.00,0.00,0.00,0.00,0.00,'-',67,'NO','0'),(3,11,0.00,0.00,0.00,0.00,0.00,0.00,'-',67,'NO','0'),(4,14,0.00,0.00,0.00,0.00,0.00,0.00,'-',67,'NO','0'),(5,18,0.00,0.00,0.00,0.00,0.00,0.00,'-',67,'NO','0'),(6,19,0.00,0.00,0.00,0.00,0.00,0.00,'-',67,'NO','0'),(7,20,0.00,0.00,0.00,0.00,0.00,0.00,'-',67,'NO','0'),(8,21,0.00,0.00,0.00,0.00,0.00,0.00,'-',67,'NO','0'),(9,24,0.00,0.00,0.00,0.00,0.00,0.00,'-',67,'NO','0'),(10,25,0.00,0.00,0.00,0.00,0.00,0.00,'-',67,'NO','0'),(11,26,0.00,0.00,0.00,0.00,0.00,0.00,'-',67,'NO','0');

/*Table structure for table `provpagos` */

DROP TABLE IF EXISTS `provpagos`;

CREATE TABLE `provpagos` (
  `idProvPagos` int(10) unsigned NOT NULL auto_increment,
  `IdProveedor` int(10) unsigned NOT NULL,
  `Total` decimal(13,2) NOT NULL default '0.00',
  `Usado` decimal(13,2) NOT NULL default '0.00',
  `SaldoPago` decimal(13,2) unsigned NOT NULL default '0.00',
  `FechaIngreso` datetime default NULL,
  `Fecha` date NOT NULL,
  `Tipo` varchar(25) NOT NULL default 'PAGO EF',
  `idresponsable` int(11) NOT NULL,
  `Unico` varchar(45) NOT NULL default '-',
  `Descripcion` varchar(150) default NULL,
  `NTransaccion` varchar(15) default NULL,
  PRIMARY KEY  (`idProvPagos`),
  KEY `IDXPagoIdProv` (`IdProveedor`),
  CONSTRAINT `FK_PagosProeveedor` FOREIGN KEY (`IdProveedor`) REFERENCES `proveedores` (`idproveedores`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `provpagos` */

insert  into `provpagos`(`idProvPagos`,`IdProveedor`,`Total`,`Usado`,`SaldoPago`,`FechaIngreso`,`Fecha`,`Tipo`,`idresponsable`,`Unico`,`Descripcion`,`NTransaccion`) values (3,1,'200.00','50.00','150.00','2021-08-12 20:14:05','2021-08-12','PAGO EF',8,'-',NULL,NULL),(4,1,'100.00','0.00','0.00','2021-08-12 20:15:15','2021-08-12','PAGO EF',8,'-',NULL,'7484151212'),(5,1,'10.20','0.00','10.20',NULL,'2021-08-16','EFECTIVO',10,'--','descriup','ncompr'),(6,1,'10.20','0.00','10.20','2021-08-16 00:00:00','2021-08-16','EFECTIVO',10,'--','descripocpn','ASDF234'),(7,10,'10.50','0.00','10.50','2021-08-16 00:00:00','2021-08-16','EFECTIVO',10,'--','',''),(8,10,'10.50','0.00','10.50','2021-08-16 00:00:00','2021-08-16','EFECTIVO',10,'--','primera linea\nsegunda linea','2021-08-16'),(9,1,'0.00','0.00','0.00','2021-08-16 00:00:00','2021-08-02','EFECTIVO',10,'--','prueba','NNASDF484545'),(10,1,'152.50','0.00','152.50','2021-08-16 00:00:00','2021-08-09','TRANSF',10,'--','','1512145212');

/*Table structure for table `provpagosparc` */

DROP TABLE IF EXISTS `provpagosparc`;

CREATE TABLE `provpagosparc` (
  `idProvPagosParc` int(10) unsigned NOT NULL auto_increment,
  `idProvPagos` int(10) unsigned NOT NULL,
  `Acuenta` double(13,2) NOT NULL default '0.00',
  `Tipo` varchar(25) NOT NULL default '-',
  `Fecha` date NOT NULL,
  `idresponsable` int(11) NOT NULL,
  `idcompras` int(11) NOT NULL,
  PRIMARY KEY  (`idProvPagosParc`),
  KEY `IdxIdProvPagos` (`idProvPagos`),
  CONSTRAINT `FK_PagParcialPago` FOREIGN KEY (`idProvPagos`) REFERENCES `provpagos` (`idProvPagos`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `provpagosparc` */

insert  into `provpagosparc`(`idProvPagosParc`,`idProvPagos`,`Acuenta`,`Tipo`,`Fecha`,`idresponsable`,`idcompras`) values (12,3,50.00,'EFECT','2021-08-12',8,5019);

/* Trigger structure for table `compras` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `ComprasUpdate` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `ComprasUpdate` AFTER UPDATE ON `compras` FOR EACH ROW BEGIN
	
DECLARE existe INTEGER;
DECLARE saldoant DOUBLE;
SELECT IF(ROUND((SUM(`Debe`)-SUM( `Haber`)),2),ROUND((SUM(`Debe`)-SUM( `Haber`)),2) ,0) INTO saldoant FROM `ctacteprove` WHERE idproveedor=new.IdProveedores;
IF((old.Estado="CREADA") AND (new.Estado="FINALIZADA")) THEN /*2*/
	IF(new.total>=0) THEN/*3*/
		INSERT INTO `ctacteprove` (`Fecha`, `FechaIng`, `idProveedor`, `idcompra`, `idPagoProve`, `Debe`, `Haber`,`idresponsable`, `Tipo`, `unico`, `NFactura`,Descripcion,SaldoAnterio) 
		VALUES(new.Fecha, CURDATE(), new.IdProveedores, new.idcompras, '0', '0', new.total, new.idencargado, new.TipoRemito, new.unico, new.NRemito,"COMPRA",saldoant) ;
	end if; /*3*/
	IF(new.total<0) THEN/*3*/	
		INSERT INTO `ctacteprove` (`Fecha`, `FechaIng`, `idProveedor`, `idcompra`, `idPagoProve`, `Debe`, `Haber`,`idresponsable`, `Tipo`, `unico`, `NFactura`,Descripcion,SaldoAnterio) 
		VALUES(new.Fecha, CURDATE(), new.IdProveedores, new.idcompras, '0', -1*new.total , '0' , new.idencargado, new.TipoRemito, new.unico, new.NRemito,"DEVOLUCION",saldoant) ;
		UPDATE proveedores  SET CreditoAf = CreditoAf+(-1*new.total) WHERE idproveedores = new.IdProveedores;
	END IF; /*3*/		
END IF;/*2*/
	
IF((old.Estado="FINALIZADA") AND (new.Estado="CREADA")) THEN /*2*/
	DELETE FROM ctacteprove WHERE `idcompra` = new.idcompras ;
	IF(new.total<0) THEN/*3*/
		UPDATE proveedores  SET CreditoAf = CreditoAf-(-1*new.total) WHERE idproveedores = new.IdProveedores;
	END IF; /*3*/		
END IF;/*2*/
	
IF((old.Estado="FINALIZADA") AND (new.Estado="FINALIZADA")) THEN /*4*/
	SELECT `idCtaCteProve` INTO existe FROM `ctacteprove`  WHERE idproveedor=new.IdProveedores AND idcompra=new.idcompras;
	IF(old.total<>new.total) THEN/*5*/
		IF(existe IS NOT NULL)THEN/*6*/
			UPDATE `ctacteprove` SET `Haber` = new.total WHERE `idCtaCteProve` = existe; 
		ELSE
			INSERT INTO `ctacteprove` (`Fecha`, `FechaIng`, `idProveedor`, `idcompra`, `idPagoProve`, `Debe`, `Haber`, `idresponsable`, `Tipo`, `unico`, `NFactura`,Descripcion,SaldoAnterio) 
				 VALUES(new.Fecha, CURDATE(), new.IdProveedores, new.idcompras, '0', '0', new.total, new.idencargado, new.TipoRemito, new.unico, new.NRemito,"COMPRA",saldoant) ;
		END IF;/*6*/
	END IF;/*5*/
END IF;/*4*/
    
END */$$


DELIMITER ;

/* Trigger structure for table `provpagos` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `ProvPagosInsert` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `ProvPagosInsert` AFTER INSERT ON `provpagos` FOR EACH ROW BEGIN
	DECLARE saldoant DOUBLE;
	SELECT IF(ROUND((SUM(`Debe`)-SUM( `Haber`)),2),ROUND((SUM(`Debe`)-SUM( `Haber`)),2) ,0) INTO saldoant FROM `ctacteprove` WHERE idproveedor=new.`IdProveedor`;
	INSERT INTO `ctacteprove` 
	(`Fecha`, `FechaIng`, `idProveedor`     , `idcompra`, `idPagoProve`    , `Debe`    , `Haber`,`idresponsable`    , `Tipo`     , `unico`  , `NFactura`      ,Descripcion,SaldoAnterio) 
	VALUES
	(new.Fecha, CURDATE(), new.`IdProveedor`, '0'       , new.`idProvPagos`,  new.total,    '0' , new.`idresponsable`, new.`Tipo`, new.unico, new.NTransaccion,"PAGO"   ,  saldoant) ;
    END */$$


DELIMITER ;

/* Trigger structure for table `provpagos` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `ProvPagosDelete` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `ProvPagosDelete` BEFORE DELETE ON `provpagos` FOR EACH ROW BEGIN
	DELETE FROM provpagosparc WHERE `idProvPagos` = old.idProvPagos;
    END */$$


DELIMITER ;

/* Trigger structure for table `provpagosparc` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `ProvPagosParcInsert` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `ProvPagosParcInsert` AFTER INSERT ON `provpagosparc` FOR EACH ROW BEGIN
	UPDATE  provpagos R INNER JOIN 
	(
		SELECT ROUND(SUM(Acuenta),2) AS Acuenta , idProvPagos FROM provpagosparc 
		WHERE idProvPagos=new.idProvPagos
		GROUP BY idProvPagos
	) CA ON R.idProvPagos =CA.idProvPagos 
	SET R.Usado=CA.Acuenta;
    
	UPDATE provpagos  SET SaldoPago=ROUND((Total-Usado),2)
	WHERE idProvPagos = new.idProvPagos ;
	
	UPDATE  compras R INNER JOIN 
	(
		SELECT ROUND(SUM(Acuenta),2) AS Acuenta , idcompras FROM provpagosparc 
		WHERE idcompras=new.idcompras
		GROUP BY idcompras
	) CA ON R.idcompras =CA.idcompras 
	SET R.Acuenta=CA.Acuenta;/* round((R.Acuenta+CA.Acuenta),2);*/
    
	UPDATE compras 
	SET Saldo = ROUND((Total - Acuenta),2)
	WHERE idcompras = new.idcompras ;	
	
    END */$$


DELIMITER ;

/* Trigger structure for table `provpagosparc` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `ProvPagosParcDelete` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `ProvPagosParcDelete` BEFORE DELETE ON `provpagosparc` FOR EACH ROW BEGIN
	
	UPDATE compras 
	SET Acuenta = ROUND((Acuenta - old.Acuenta),2)
	WHERE idcompras = old.idcompras ;
	
	
	UPDATE compras 
	SET Saldo = ROUND((Total - Acuenta),2)
	WHERE idcompras = old.idcompras ;
	
    END */$$


DELIMITER ;

/* Procedure structure for procedure `ActualizarCompras` */

/*!50003 DROP PROCEDURE IF EXISTS  `ActualizarCompras` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `ActualizarCompras`(IN _id INT)
BEGIN
	UPDATE compras 
	SET Saldo = ROUND((Total - Acuenta),2)
	WHERE idcompras = _id ;
    END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
