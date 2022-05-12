/*Insertar provincia*/
INSERT INTO Provincias VALUES (1, 'Araba');
INSERT INTO Provincias (codigoprovincia, nombre)
VALUES (2,'Bizkaia');
INSERT INTO Provincias (codigoprovincia, nombre)
VALUES (3,'Gipuzkoa');
INSERT INTO Provincias (codigoprovincia, nombre)
VALUES (4,'Nafarroa');

/*Insertar caminoneros*/
INSERT INTO Camioneros (dni,nombre,telefono,direccion,salario,poblacion)
VALUES ('72525244D','Arturo',663553522,'C/Miguel Hernández 2',1800.0,'Altsasua');
INSERT INTO Camioneros (dni,nombre,telefono,direccion,salario,poblacion)
VALUES ('74539982H','Amaia',NULL,'C/Rafael Alberti 24',1500.0,'Hernani');
INSERT INTO Camioneros (dni,nombre,telefono,direccion,salario,poblacion)
VALUES ('06224189B','Idoia',677339291,'C/Federico Garcia Lorca 34',2700.0,'Vitoria-Gasteiz');
INSERT INTO Camioneros (dni,nombre,telefono,direccion,salario,poblacion)
VALUES ('09833567P','Egoitz',632562629,NULL,2100.0,'Sestao');
INSERT INTO Camioneros (dni,nombre,telefono,direccion,salario,poblacion)
VALUES ('75769227Z','David',633783311,'C/Pio Baroja 21',1000.0,'Gernika');

/*Insertar camiones*/
INSERT INTO Camiones (matricula,modelo,tipo,potencia)
VALUES ('6562AAB','Mercedes-Benz',NULL,310);
INSERT INTO Camiones (matricula,modelo,tipo,potencia)
VALUES ('1299KLJ','Ebro','Perkins V8',290);
INSERT INTO Camiones (matricula,modelo,tipo,potencia)
VALUES ('5596MMA','Iveco',NULL,320);
INSERT INTO Camiones (matricula,modelo,tipo,potencia)
VALUES ('9353SVP','Renault','Magnum',420);

/*Insertar Paquetes*/
INSERT INTO Paquetes (codigopaquete,descripcion,destinatario,dirección,codigoprovincia,dni)
VALUES (1,'Movil','76762622F','Pz/Santa Eulalia 7',4,'72525244D');
INSERT INTO Paquetes (codigopaquete,descripcion,destinatario,dirección,codigoprovincia,dni)
VALUES (2,'Pesas','65622299J','C/Errekatxiki 2',1,'06224189B');
INSERT INTO Paquetes (codigopaquete,descripcion,destinatario,dirección,codigoprovincia,dni)
VALUES (3,'Ordenador','66226151G','C/Vicente Alexander 89',2,'09833567P');
INSERT INTO Paquetes (codigopaquete,descripcion,destinatario,dirección,codigoprovincia,dni)
VALUES (4,'TV','09088821S','C/Madrid 23',3,'74539982H');
INSERT INTO Paquetes (codigopaquete,descripcion,destinatario,dirección,codigoprovincia,dni)
VALUES (5,'Cascos','73718133L','C/Francia 12',2,'09833567P');
INSERT INTO Paquetes (codigopaquete,descripcion,destinatario,dirección,codigoprovincia,dni)
VALUES (6,'Abrigo','72211852U','Av. Gasteiz 66',1,'06224189B');
INSERT INTO Paquetes (codigopaquete,descripcion,destinatario,dirección,codigoprovincia,dni)
VALUES (7,'Zapatillas','71179337K','C/La Paz 13',3,'74539982H');
INSERT INTO Paquetes (codigopaquete,descripcion,destinatario,dirección,codigoprovincia,dni)
VALUES (8,'Sofa','46783526B','C/Estafeta 29',4,'72525244D');
INSERT INTO Paquetes (codigopaquete,descripcion,destinatario,dirección,codigoprovincia,dni)
VALUES (9,'Ordenador','67733990G','C/Francia 12',2,'09833567P');

/*INSERTAR TABLA LLEVAN*/
INSERT INTO Llevan(DNI,Matricula) VALUES ("72525244D","6562AAB");
INSERT INTO Llevan(DNI,Matricula) VALUES("72525244D","1299KLJ");
INSERT INTO Llevan(DNI,Matricula) VALUES("74539982H","5596MMA");
INSERT INTO Llevan(DNI,Matricula) VALUES("74539982H","9353SVP");
INSERT INTO Llevan(DNI,Matricula) VALUES("06224189B","6562AAB");
INSERT INTO Llevan(DNI,Matricula) VALUES("06224189B","9353SVP");
INSERT INTO Llevan(DNI,Matricula) VALUES("09833567P","5596MMA");
INSERT INTO Llevan(DNI,Matricula) VALUES("09833567P","1299KLJ");
INSERT INTO Llevan(DNI,Matricula) VALUES("09833567P","9353SVP");

/*cuestion 1*/
UPDATE Camiones SET tipo='1824 LL' WHERE matricula = '6562AAB';
/*cuestion 2*/
UPDATE Camiones SET tipo='Eurocargo' WHERE modelo = 'Iveco';
/*cuestion 3*/
UPDATE Camioneros set direccion ="C/Antonio Machado 18" WHERE nombre="Egoitz";
/*cuestion 4*/
UPDATE Camioneros SET telefono='696134529' WHERE direccion= "C/Rafael Alberti 24";
/*cuestion 5*/
UPDATE Camiones SET potencia='450' WHERE matricula = '1299KLJ';
/*cuestion 6*/
UPDATE Camioneros SET salario='3000€';
/*cuestion 7*/
UPDATE Paquetes SET descripcion="iPhone 10" WHERE direccion = "C/Francia 12" AND destinatario"67733990G";

/*actividad 3*/
/*cuestion 1*/
DELETE FROM Paquetes WHERE destinatario="67733990G" AND descripcion="iPhone 10";
/*cuestion 2*/
DELETE FROM Camioneros WHERE nombre ="David";
/*cuestion 3*/
DELETE FROM Llevan WHERE dni="09833567P" AND matricula="9353SVP";
/*cuestion 4*/
DELETE FROM Camioneros WHERE nombre = 'Arturo'; /*Si borramos a Arturo estaríamos violando la integridad referencial, ya que el registro Arturo forma 	parte de varios registros de la entidad “Llevan” y la entidad “Paquetes”*/


/*Apartado 1*/
SELECT * FROM Camioneros WHERE poblacion = 'Vitoria-Gast';
/*Apartado 2*/
SELECT * FROM Camioneros;
/*Apartado 3*/
SELECT nombre, telefono FROM Camioneros;
/*Apartado 4*/
SELECT nombre, telefono FROM Camioneros WHERE nombre LIKE 'A%';
/*Apartado 5*/
SELECT nombre, telefono FROM Camioneros WHERE nombre LIKE 'I%' OR nombre LIKE 'E%';
/*Apartado 5.1*/
UPDATE Camioneros SET salario=1800 WHERE nombre = 'Idoia';
/*Apartado 5.2*/
UPDATE Camioneros SET salario=2100 WHERE nombre = 'Egoitz';
/*Apartado 5.3*/
UPDATE Camioneros SET salario=1500 WHERE nombre = 'Arturo';
/*Apartado 5.4*/
UPDATE Camioneros SET salario=2800 WHERE nombre = 'Amaia';
/*Apartado 6*/
SELECT dni, nombre FROM caminoneros WHERE salario>1600 AND salario <2700;
SELECT dni, nombre FROM camioneros WHERE salario BETWEEN 1600 AND 2700;
/*Apartado 7*/
SELECT telefono FROM camioneros WHERE salario =1500 or salario = 2100 or salario=2800;
SELECT telefono FROM camioneros WHERE salario in(1500,2100,2800);
/*Apartado 8*/
SELECT* FROM Paquetes where destinatario LIKE '7%';
/*Apartado9 */
SELECT direccion FROM Paquetes where descripcion ="Ordenador";
/*Apartado 10*/
SELECT direccion from Paquetes WHERE descripcion LIKE "c%" and codigoprovincia= 2;
/*Apartado 11 */
SELECT* FROM camiones;
/*Apartado 12 */
SELECT*From camiones where modelo= "Renault" or modelo= "iveco";
/*Apartado 13 */
select matricula,modelo from camiones WHERE potencia 420 or potencia="310";
select matricula,modelo from camiones WHERE potencia in (420,310);
/*Apartado 14 */
SELECT matricula,modelo from camiones WHERE potencia>=300 and potencia<=400;
SELECT matricula,modelo from camiones WHERE potencia BETWEEN 300 and 400;
/*Apartado 15 */
SELECT matricula From  Llevan WHERE dni= "72525244D";
/*Apartado 16*/
SELECT matricula From  Llevan WHERE dni like "7%";
/*Apartado 17 */
SELECT dni from llevan WHERE matricula="5596MMA";
/*actividad 2 */
/*Apartado 1*/
SELECT camioneros.nombre from camioneros,Paquetes WHERE camioneros.dni=Paquetes.dni and Paquetes.descripcion="Abrigo";
SELECT camioneros.nombre from camioneros join Paquetes on camioneros.dni=Paquetes.dni WHERE Paquetes.descripcion="Abrigo";
/*Apartado2 */
SELECT camioneros.salario,camioneros.poblacion from camioneros,Paquetes
WHERE  camioneros.dni=Paquetes.dni and Paquetes.direccion="Av.Gasteiz 66 ";
SELECT camioneros.salario,camioneros.poblacion from camioneros join
Paquetes on  camioneros.dni=Paquetes.dni WHERE Paquetes.direccion="Av.Gasteiz 66 ";
/*Apartado 3*/
SELECT Camioneros.nombre, Paquetes.descripcion, Paquetes.destinatario, Paquetes.direccion
FROM Camioneros, Paquetes WHERE Camioneros.dni=Paquetes.dni AND Camioneros.poblacion='Vitoria-Gast';
SELECT Camioneros.nombre, Paquetes.descripcion, Paquetes.destinatario, Paquetes.direccion
FROM Camioneros JOIN Paquetes ON Camioneros.dni=Paquetes.dni
WHERE Camioneros.poblacion='Vitoria-Gast';
/*Apartado 4*/
SELECT Paquetes.*from Paquetes,camioneros WHERE camioneros.dni=Paquetes.dni and camioneros.salario= 2800;
SELECT Paquetes.*from Paquetes join camioneros on camioneros.dni=Paquetes.dni WHERE camioneros.salario= 2800;
/*Apartado 5*/
SELECT Camioneros.nombre FROM Camioneros, Camiones, Llevan
WHERE Llevan.dni = Camioneros.dni AND Llevan.matricula = Camiones.matricula
AND Camiones.modelo = 'Ebro';
SELECT Camioneros.NOMBRE FROM Camioneros JOIN Llevan ON
Camioneros.DNI = Llevan.DNI JOIN Camiones ON Llevan.MATRICULA = Camiones.MATRICULA
WHERE MODELO='Ebro';
/*Apartado 6*/
SELECT Camiones.modelo, Camiones.tipo FROM Camiones, Camioneros, LLEVAN
WHERE Llevan.dni = Camioneros.dni AND Llevan.matricula = Camiones.matricula
AND Camioneros.salario>2000;
SELECT Camiones.modelo, Camiones.tipo FROM
Camioneros JOIN Llevan ON Camioneros.dni=Llevan.DNI
JOIN Camiones ON Camiones.matricula=llevan.matricula
WHERE Camioneros.salario>2000;
/*Apartado 7*/
SELECT camioneros.nombre,camioneros.telefono,camioneros.direccion from camioneros,camiones,llevan
WHERE Camioneros.dni=Llevan.DNI and camiones.matricula=Llevan.MATRICULA
and (tipo like "P%"or tipo like "M%");
SELECT camioneros.nombre,camioneros.telefono,camioneros.direccion, camiones.tipo from
camioneros join llevan on camioneros.dni=llevan.dni join camiones on camiones.matricula=llevan.MATRICULA
WHERE tipo like "p%" or tipo like "M%";
/*Apartado 8*/
SELECT Camiones.modelo, Camiones.tipo, Camiones.potencia, Camioneros.nombre
FROM Camioneros, Camiones, Llevan, Paquetes
WHERE Camioneros.dni = Llevan.dni AND Llevan.matricula = Camiones.matricula AND Camioneros.dni = Paquetes.DNI
AND Paquetes.descripcion= 'Zapatillas';
SELECT Camiones.modelo, Camiones.tipo, Camiones.potencia, Camioneros.nombre
FROM Camiones JOIN Llevan ON Camiones.matricula = Llevan.matricula
JOIN Camioneros ON Camioneros.dni = Llevan.dni
JOIN Paquetes ON Camioneros.dni = Paquetes.dni
WHERE Paquetes.descripcion= 'Zapatillas';
