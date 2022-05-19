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
