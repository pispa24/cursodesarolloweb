/*Ejercicio 2.5*/
/*Actividad 1*/
/*Apartado 1*/
SELECT COUNT(*),poblacion FROM Camioneros GROUP BY poblacion;
/*Apartado 2*/
SELECT AVG(salario),poblacion FROM Camioneros GROUP BY poblacion;
/*Apartado 3*/
SELECT MIN(salario),MAX(salario),poblacion FROM Camioneros GROUP BY poblacion;
/*Apartado 4*/
SELECT SUM(salario),poblacion FROM Camioneros GROUP BY poblacion;
/*Apartado 5*/
SELECT COUNT(*),poblacion FROM Camioneros WHERE edad>50 GROUP BY poblacion;
/*Apartado 6*/
SELECT COUNT(*),poblacion FROM Camioneros WHERE edad<50 GROUP BY poblacion;
/*Apartado 7*/
SELECT AVG(salario), MAX(salario),MIN(salario),COUNT(*)
FROM camioneros WHERE edad>50 GROUP BY poblacion;
/*Apartado 8*/
SELECT AVG(salario), MAX(salario),MIN(salario),COUNT(*)
FROM camioneros WHERE edad<50 GROUP BY poblacion;
/*Apartado 9*/
SELECT poblacion,AVG(salario), MAX(salario),MIN(salario)
from camioneros GROUP by poblacion having avg(salario)>2000;
/*Apartado 10*/
SELECT poblacion,AVG(salario), MAX(salario),MIN(salario)
from camioneros GROUP by poblacion having avg(salario)<2000;
/*Apartado 11*/
SELECT poblacion,AVG(edad), MAX(edad),MIN(edad),COUNT(*)
FROM camioneros GROUP BY poblacion;
/*Apartado 12*/
SELECT AVG(edad), MAX(edad),MIN(edad),COUNT(*)
FROM camioneros WHERE edad>=40 GROUP BY poblacion;

/*Apartado 13*/
SELECT AVG(edad), MAX(edad),MIN(edad),COUNT(*)
FROM camioneros WHERE edad<40 GROUP BY poblacion;
/*Apartado 14*/
SELECT poblacion,AVG(edad), MAX(edad),MIN(edad),COUNT(*)
FROM camioneros GROUP BY poblacion having avg(edad)>40;
/*Apartado 15*/
SELECT poblacion,AVG(edad), MAX(edad),MIN(edad),COUNT(*)
FROM camioneros GROUP BY poblacion having avg(edad)<40;
/*Apartado 16*/
SELECT poblacion,AVG(salario), MAX(salario),MIN(salario)
from camioneros WHERE salario>2000 GROUP by poblacion having COUNT(*)>=2;
/*Apartado 17*/
SELECT AVG(edad), MAX(edad),MIN(edad),COUNT(*)
from camioneros where salario>2000 group by poblacion having avg(edad)>50;
/*Actividad 2*/
/*Apartado 1*/
SELECT dni, nombre FROM Camioneros
WHERE salario = (SELECT MAX(salario) FROM Camioneros);
/*Apartado 2*/
SELECT dni, nombre FROM Camioneros
WHERE salario = (SELECT MIN(salario) FROM Camioneros);
/*Apartado 3*/
SELECT nombre,telefono,salario from camioneros
WHERE salario>(SELECT avg(salario)from camioneros);
/*Apartado 4*/
SELECT nombre,telefono,salario from camioneros
WHERE salario>all(SELECT avg(salario)from camioneros group by poblacion);
/*Apartado 5*/
SELECT nombre, salario, edad FROM Camioneros
WHERE edad<40 AND salario > (SELECT AVG(salario) FROM Camioneros);
/*Apartado 6*/
SELECT nombre, salario, edad FROM Camioneros
WHERE edad = (SELECT MIN(edad) FROM Camioneros);
/*Apartado 7*/
SELECT nombre, salario, edad FROM Camioneros
WHERE edad = (SELECT MAX(edad) FROM Camioneros);
*Ejercicio 2.6*/

/*Ejercicio 2.6*/

/*Apartado 1*/
DROP TABLE Veteranos CASCADE CONSTRAINTS;

CREATE TABLE Veteranos(
  dni varchar(9),
  nombre varchar(15),
  telefono int(11),
  direccion varchar(30),
  salario numeric(8,2),
  poblacion varchar(12),
  edad int(11),
  PRIMARY KEY(dni)
);

INSERT INTO Veteranos (SELECT * FROM Camioneros WHERE edad>50);

/*Apartados 2*/
DROP TABLE Camioneros_Vitoria CASCADE CONSTRAINTS;

CREATE TABLE Camioneros_Vitoria(
  dni varchar(9),
  nombre varchar(100),
  direccion varchar(100),
  PRIMARY KEY (dni)
);

INSERT INTO Camioneros_Vitoria (SELECT dni,nombre,direccion
  FROM Camioneros WHERE poblacion='Vitoria-Gast');

/*Apartado 3*/
DROP TABLE Camioneros_Pobres CASCADE CONSTRAINTS;

CREATE TABLE Camioneros_Pobres(
  dni varchar(9),
  nombre varchar(100),
  salario numeric(8,2),
  poblacion varchar(100),
  edad int(11),
  PRIMARY KEY(dni)
);

INSERT INTO Camioneros_Pobres (dni, nombre, salario)
(SELECT dni, nombre, salario FROM Camioneros WHERE salario <= 1500)
