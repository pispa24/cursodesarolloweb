CREATE DATABASE  IF NOT EXISTS `repaso` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;
USE `repaso`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: empleadoss_departamentoss
-- ------------------------------------------------------
-- Server version	5.7.17-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `departamentos`
--

DROP TABLE IF EXISTS `departamentoss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departamentos` (
  `codDepto` varchar(4) COLLATE utf8_bin NOT NULL,
  `nombreDpto` varchar(20) COLLATE utf8_bin NOT NULL,
  `ciudad` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `codDirector` varchar(12) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`codDepto`),
  KEY `FK_EmpDir` (`codDirector`),
  CONSTRAINT `FK_EmpDir` FOREIGN KEY (`codDirector`) REFERENCES `empleadoss` (`jefeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamentos`
--

LOCK TABLES `departamentos` WRITE;
/*!40000 ALTER TABLE `departamentos` DISABLE KEYS */;
INSERT INTO `departamentos` VALUES ('1000','GERENCIA','CIUDAD REAL','31.840.269');
INSERT INTO `departamentos` VALUES ('1500','PRODUCCIÓN','CIUDAD REAL','16.211.383');
INSERT INTO `departamentos` VALUES ('2000','VENTAS','CIUDAD REAL','31.178.144');
INSERT INTO `departamentos` VALUES ('2100','VENTAS','BARCELONA','16.211.383');
INSERT INTO `departamentos` VALUES ('2200','VENTAS','VALENCIA','16.211.383');
INSERT INTO `departamentos` VALUES ('2300','VENTAS','MADRID','16.759.060');
INSERT INTO `departamentos` VALUES ('3000','INVESTIGACIÓN','CIUDAD REAL','16.759.060');
INSERT INTO `departamentos` VALUES ('3500','MERCADEO','CIUDAD REAL','22.222.222');
INSERT INTO `departamentos` VALUES ('4000','MANTENIMIENTO','CIUDAD REAL','333.333.333');
INSERT INTO `departamentos` VALUES ('4100','MANTENIMIENTO','BARCELONA','16.759.060');
INSERT INTO `departamentos` VALUES ('4200','MANTENIMIENTO','VALENCIA','16.759.060');
INSERT INTO `departamentos` VALUES ('4300','MANTENIMIENTO','MADRID','16.759.060');
/*!40000 ALTER TABLE `departamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empleados` (
  `nDIEmp` varchar(12) COLLATE utf8_bin NOT NULL,
  `nomEmp` varchar(30) COLLATE utf8_bin NOT NULL,
  `sexEmp` char(1) COLLATE utf8_bin NOT NULL,
  `fecNac` date NOT NULL,
  `fecIncorporacion` date NOT NULL,
  `salEmp` float NOT NULL,
  `comisionE` float NOT NULL,
  `cargoE` varchar(15) COLLATE utf8_bin NOT NULL,
  `jefeID` varchar(12) COLLATE utf8_bin DEFAULT NULL,
  `codDepto` varchar(4) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`nDIEmp`),
  KEY `FK_Empl` (`jefeID`),
  KEY `FK_Dpto` (`codDepto`),
  CONSTRAINT `FK_Dpto` FOREIGN KEY (`codDepto`) REFERENCES `departamentos` (`codDepto`),
  CONSTRAINT `FK_Empl` FOREIGN KEY (`jefeID`) REFERENCES `empleados` (`nDIEmp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES ('1.130.222','José Giraldo','M','1985-01-20','2000-11-01',1200000,400000,'Asesor','22.222.222','3500');
INSERT INTO `empleados` VALUES ('1.130.333','Pedro Blanco','M','1987-10-28','2000-10-01',800000,3000000,'Vendedor','31.178.144','2000');
INSERT INTO `empleados` VALUES ('1.130.444','Jesús Alfonso','M','1988-03-14','2000-10-01',800000,3500000,'Vendedor','31.178.144','2000');
INSERT INTO `empleados` VALUES ('1.130.555','Julián Mora','M','1989-07-03','2000-10-01',800000,3100000,'Vendedor','31.178.144','2200');
INSERT INTO `empleados` VALUES ('1.130.666','Manuel Millán','M','1990-12-08','2004-06-01',800000,3700000,'Vendedor','31.178.144','2300');
INSERT INTO `empleados` VALUES ('1.130.777','Marcos Cortez','M','1986-06-23','2000-04-16',2550000,500000,'Mecánico','333.333.333','4000');
INSERT INTO `empleados` VALUES ('1.130.782','Antonio Gil','M','1980-01-23','2010-04-16',850000,1500000,'Técnico','16.211.383','1500');
INSERT INTO `empleados` VALUES ('1.751.219','Melissa Roa','F','1960-06-19','2001-03-16',2250000,2500000,'Vendedor','31.178.144','2100');
INSERT INTO `empleados` VALUES ('11.111.111','Irene Díaz','F','1979-09-28','2004-06-01',1050000,200000,'Mecánico','333.333.333','4200');
INSERT INTO `empleados` VALUES ('16.211.383','Luis Pérez','M','1956-02-25','2000-01-01',5050000,0,'Director','31.840.269','1500');
INSERT INTO `empleados` VALUES ('16.759.060','Darío Casas','M','1960-04-05','1992-11-01',4500000,500000,'Investigador','31.840.269','3000');
INSERT INTO `empleados` VALUES ('19.709.802','William Daza','M','1982-10-09','1999-12-16',2250000,1000000,'Investigador','16.759.060','3000');
INSERT INTO `empleados` VALUES ('22.222.222','Carla López','F','1975-05-11','2005-07-16',4500000,500000,'Jefe Mercadeo','31.840.269','3500');
INSERT INTO `empleados` VALUES ('22.222.333','Carlos Rozo','M','1975-05-11','2001-09-16',750000,500000,'Vigilante','31.840.269','3500');
INSERT INTO `empleados` VALUES ('31.174.099','Diana Solarte','F','1957-11-19','1990-05-16',1250000,500000,'Secretaria','31.840.269','1000');
INSERT INTO `empleados` VALUES ('31.178.144','Rosa Angulo','F','1957-03-15','1998-08-16',3250000,3500000,'Jefe Ventas','31.840.269','2000');
INSERT INTO `empleados` VALUES ('31.840.269','María Rojas','F','1959-01-15','1990-05-16',6250000,1500000,'Gerente',NULL,'1000');
INSERT INTO `empleados` VALUES ('333.333.333','Elisa Rojas','F','1979-09-28','2004-06-01',3000000,1000000,'Jefe Mecánicos','31.840.269','4000');
INSERT INTO `empleados` VALUES ('333.333.334','Marisol Pulido','F','1979-10-01','1990-05-16',3250000,1000000,'Investigador','16.759.060','3000');
INSERT INTO `empleados` VALUES ('333.333.335','Ana Moreno','F','1992-01-05','2004-06-01',1200000,400000,'Secretaria','16.759.060','3000');
INSERT INTO `empleados` VALUES ('333.333.336','Carolina Ríos','F','1992-02-15','2000-10-01',1250000,500000,'Secretaria','16.211.383','1500');
INSERT INTO `empleados` VALUES ('333.333.337','Edith Muñoz','F','1992-03-31','2000-10-01',800000,3600000,'Vendedor','31.178.144','2100');
INSERT INTO `empleados` VALUES ('444.444','Abel Gómez','M','1939-12-24','2000-10-01',1050000,200000,'Mecánico','333.333.333','4300');
INSERT INTO `empleados` VALUES ('737.689','Mario Llano','M','1945-08-30','1990-05-16',2250000,2500000,'Vendedor','31.178.144','2300');
INSERT INTO `empleados` VALUES ('768.782','Joaquín Rosas','M','1947-07-07','1990-05-16',2250000,2500000,'Vendedor','31.178.144','2200');
INSERT INTO `empleados` VALUES ('888.888','Iván Duarte','M','1955-08-12','1998-05-16',1050000,200000,'Mecánico','333.333.333','4100');
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


/*Ej1*/
SELECT * FROM empleados;
/*Ej2*/
SELECT * FROM departamentos;
/*Ej3*/
SELECT * FROM empleados WHERE cargoE = 'Secretaria';
/*Ej4*/
SELECT nomEmp,salEmp FROM empleados;
/*Ej5*/
SELECT * FROM empleados WHERE cargoE = 'Vendedor' ORDER BY nomEmp DESC;
/*Ej6*/
SELECT nombreDpto FROM departamentos;
/*sin repeticiones*/SELECT DISTINCT nombreDpto FROM departamentos;
/*Ej7*/
SELECT nomEmp, cargoE FROM empleados ORDER BY salEmp;
SELECT nomEmp, cargoE,salEmp FROM empleados ORDER BY salEmp;
/*Ej8*/
SELECT salEmp,comisionE FROM empleados WHERE codDepto = 2000 ORDER BY comisionE;
/*Ej9*/
SELECT comisionE FROM empleados;
/*Ej10*/
SELECT nomEmp, salEmp, (salEmp+500000) as 'paga extra'
FROM empleados WHERE codDepto = 3000 ORDER BY nomEmp;
/*Ej11*/
SELECT * FROM empleados WHERE comisionE>salEmp;
/*Ej12*/
SELECT * FROM empleados WHERE comisionE<=(salEmp*0.3);
/*Ej13*/
SELECT nomEmp as 'NOMBRE',cargoE as 'CARGO' FROM empleados;
/*Ej14*/
SELECT salEmp, comisionE,codDepto FROM empleados WHERE codDepto>2500;
/*Ej15*/
SELECT nomEmp,cargoE FROM empleados WHERE nomEmp>'J' AND nomEmp<'Z' ORDER BY nomEmp;
SELECT nomEmp,cargoE FROM empleados WHERE nomEmp BETWEEN 'J' AND 'Z' ORDER BY nomEmp;
/*Ej16*/
SELECT salEmp, comisionE, (salEmp+comisionE) as 'SalarioTotal', nDIEmp, nomEmp
FROM empleados WHERE comisionE>1000000 ORDER BY nDIEmp;
/*Ej17*/
SELECT * FROM empleados WHERE comisionE=0;
SELECT salEmp, comisionE, (salEmp+comisionE) as 'SalarioTotal', nDIEmp, nomEmp
FROM empleados WHERE comisionE=0 ORDER BY nDIEmp;
/*Ej18*/
SELECT * FROM empleados WHERE upper(nomEmp) NOT LIKE '%MA%';
/*Ej19*/
SELECT nombreDpto FROM departamentos
WHERE nombreDpto <> 'VENTAS' AND nombreDpto <> 'INVESTIGACIÓN'
AND nombreDpto <> 'MANTENIMIENTO';
SELECT nombreDpto FROM departamentos
WHERE nombreDpto NOT IN ('VENTAS','INVESTIGACIÓN','MANTENIMIENTO');
/*Ej20*/
SELECT empleados.nomEmp, departamentos.nombreDpto FROM empleados, departamentos
WHERE empleados.codDepto = departamentos.codDepto
AND (empleados.cargoE='Secretaria' OR empleados.cargoE ='Vendedor')
AND departamentos.nombreDpto <> 'PRODUCCIÓN' AND empleados.salEmp > 1000000
ORDER BY fecIncorporacion;
/*Ej21*/
SELECT * FROM empleados WHERE char_length(nomemp) = 11;
/*Ej22*/
SELECT * FROM empleados WHERE char_length(nomemp) >= 11;
/*Ej23*/
select emp.nomEmp, dpt.nombreDpto, emp.salEmp
from empleados emp, departamentos dpt
where emp.codDepto=dpt.codDepto and lower(emp.nomEmp) like 'm%'
and (emp.salEmp > 800000 or emp.comisionE>0)
and lower(dpt.nombreDpto)='ventas';
/*Ej24*/
SELECT nomEmp, salEmp, comisionE FROM empleados
WHERE salEmp > (comisionE/2) AND salEmp < comisionE;
/*Ej25*/
SELECT max(salEmp) FROM empleados;
/*Ej26*/
SELECT comisionE, count(*) AS 'numeroEmpleados'
FROM empleados GROUP BY (comisionE)
HAVING  (comisionE > 0);
/*Ej27*/
SELECT max(nomEmp) FROM empleados;
/*Ej28*/
SELECT max(salEmp) AS 'MaximoSalario', min(salEmp) AS 'MinimoSalario',
(max(salEmp)-min(salEmp)) AS 'Diferencia' FROM empleados;
/*Ej29*/
SELECT codDepto, sexemp, count(*)
FROM empleados
GROUP BY codDepto, sexemp;
/*Ej30*/
SELECT AVG(salEmp), codDepto FROM empleados GROUP BY codDepto;
/*Ej31*/
SELECT * FROM empleados
WHERE salEmp>= (SELECT AVG(salEmp) FROM empleados);
/*Ej32*/
select d.codDepto, d.nombreDpto, count(*) as 'Num empleados'
from departamentos d, empleados e
where d.codDepto=e.codDepto group by d.codDepto
having count(*) >= 3;
/*Ej33*/
select j.nDIEmp, j.nomEmp, count(*) as 'Num Empleados'
from empleados e, empleados j where e.jefeID=j.nDIEmp
group by j.nomEmp having count(*)>=2 order by count(*) desc;
/*Ej34*/
select d.nombreDpto, sum(e.salEmp) from departamentos d, empleados e
where d.codDepto=e.codDepto group by d.nombreDpto
order by sum(e.salEmp) desc limit 1;
/*Ej35*/
INSERT INTO empleados (nDIEmp,nomEmp,sexEmp,fecNac,fecIncorporacion,salEmp,comisione,cargoE,jefeID,codDepto)
VALUES('71.222.111','Pedro Mora','M','1980-12-18','2003-04-02',1200000,200000,'Asesor','22.222.222','3500');
select*from empleados where nomEmp="Pedro Mora";
/*Ej36*/
update empleados set salEmp=14000,comisionE=300000 where nomEmp="Pedro Mora";
  select*from empleados where nomEmp="Pedro Mora";
/*Ej37*/
update empleados set salEmp=(salEmp*3),comisionE=(comisionE/2)
  where cargoE="Asesor";
  select*from empleados where nomEmp="asesor";
/*Ej38*/
delete from empleados where nomEmp="Pedro Mora";
