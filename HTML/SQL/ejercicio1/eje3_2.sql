/*Ejercicio 3.2 TOUR*/

/*Apartado 1 Creación de tablas*/
CREATE DATABASE TOURFRANCIA;
USE TOURFRANCIA;

CREATE TABLE equipos(
  codequipo VARCHAR(4),
  nombre VARCHAR(30) NOT NULL,
  nacionalidad VARCHAR(20),
  nombredirector VARCHAR(20),
  CONSTRAINT nombremayus CHECK(nombredirector=UPPER(nombredirector)),
  PRIMARY KEY (codequipo)
);

CREATE TABLE ciclistas(
  dorsal INT(3),
  nombre VARCHAR(30) NOT NULL,
  nacionalidad VARCHAR(20),
  codequipo VARCHAR(4),
  fechanacimiento DATE,
  CONSTRAINT fkcodequipo FOREIGN KEY (codequipo)
      REFERENCES equipos (codequipo),
  PRIMARY KEY (dorsal),
  CONSTRAINT dorsalOK CHECK(Dorsal<=99 AND Dorsal >=1)
);

CREATE TABLE etapas(
  numetapa INT(2),
  numkms INT(3),
  tipo VARCHAR(30),
  fecha DATE,
  premio INT(5),
  PRIMARY KEY (numetapa),
  CONSTRAINT fechavalida CHECK(fecha>='2020-07-19' AND fecha<='2020-08-20')
);

CREATE TABLE clasificacionetapas(
  numetapa INT(2),
  dorsal INT(3),
  posicion INT(3),
  distaciaalganador INT(8),
  PRIMARY KEY (numetapa,dorsal),
  CONSTRAINT fknumetapa FOREIGN KEY (numetapa)
      REFERENCES etapas (numetapa),
  CONSTRAINT fkdorsal FOREIGN KEY (dorsal)
      REFERENCES ciclistas (dorsal),
  CONSTRAINT posvalida CHECK((posicion<=99 AND posicion >=1) OR posicion ='Abandono')
);

/*Apartado 3*/
INSERT INTO equipos (codequipo,nombre,nacionalidad,nombredirector)
VALUES ('0001','Movistar Team','Española','jose luis arrieta');
INSERT INTO equipos (codequipo,nombre,nacionalidad,nombredirector)
VALUES ('0002','Trek-Segafredo','Estadounidense','KIM andersen');
INSERT INTO equipos (codequipo,nombre,nacionalidad,nombredirector)
VALUES ('0003','Team Ineos','Inglesa','Nicolas portal');
INSERT INTO equipos (codequipo,nombre,nacionalidad,nombredirector)
VALUES ('0004','FDJ','Francesa','Philippe mauduit');
INSERT INTO equipos (codequipo,nombre,nacionalidad,nombredirector)
VALUES ('0005','EF Education First','Estadounidense','tom southam');

/* cilcistas */
INSERT INTO Ciclistas (Dorsal,Nombre,Nacionalidad,CodEquipo,FechaNacimiento)
VALUES ('1','Quintana','Colombiana','0001','1990-02-04');
INSERT INTO Ciclistas (Dorsal,Nombre,Nacionalidad,CodEquipo,FechaNacimiento)
VALUES ('2','Valverde','Española','0001','1980-04-25');
INSERT INTO Ciclistas (Dorsal,Nombre,Nacionalidad,CodEquipo,FechaNacimiento)
VALUES ('3','Erviti','Española','0001','1983-11-15');
INSERT INTO Ciclistas (Dorsal,Nombre,Nacionalidad,CodEquipo,FechaNacimiento)
VALUES ('4','Landa','Española','0001','1989-12-13');
INSERT INTO Ciclistas (Dorsal,Nombre,Nacionalidad,CodEquipo,FechaNacimiento)
VALUES ('5','Porte','Australiana','0002','1985-01-30');
INSERT INTO Ciclistas (Dorsal,Nombre,Nacionalidad,CodEquipo,FechaNacimiento)
VALUES ('6','Bernard','Francesa','0002','1992-03-17');
INSERT INTO Ciclistas (Dorsal,Nombre,Nacionalidad,CodEquipo,FechaNacimiento)
VALUES ('7','Ciccone','Italiana','0002','1986-05-20');
INSERT INTO Ciclistas (Dorsal,Nombre,Nacionalidad,CodEquipo,FechaNacimiento)
VALUES ('8','Thomas','Inglesa','0003','1986-05-25');
INSERT INTO Ciclistas (Dorsal,Nombre,Nacionalidad,CodEquipo,FechaNacimiento)
VALUES ('9','Bernal','Colombiana','0003','1997-01-13');
INSERT INTO Ciclistas (Dorsal,Nombre,Nacionalidad,CodEquipo,FechaNacimiento)
 VALUES ('10','Bonnet','Francesa','0004','1982-06-25');
INSERT INTO Ciclistas (Dorsal,Nombre,Nacionalidad,CodEquipo,FechaNacimiento)
VALUES ('11','Gaudu','Francesa','0004','1996-10-10');
INSERT INTO Ciclistas (Dorsal,Nombre,Nacionalidad,CodEquipo,FechaNacimiento)
VALUES ('12','Rous','Francesa','0004','1996-10-10');
INSERT INTO Ciclistas (Dorsal,Nombre,Nacionalidad,CodEquipo,FechaNacimiento)
VALUES ('13','Uran','Colombiana','0005','1987-01-26');
INSERT INTO Ciclistas (Dorsal,Nombre,Nacionalidad,CodEquipo,FechaNacimiento)
VALUES ('14','Bettiol','Italiana','0005','1993-10-29');

/*Etapas*/

INSERT INTO etapas (numetapa, numkms, tipo, fecha)
VALUES (1, 9, 'Contrarreloj','2020-07-27');
INSERT INTO etapas (numetapa, numkms, tipo, fecha)
VALUES (2, 185, 'Llana','2020-07-28');
INSERT INTO etapas (numetapa, numkms, tipo, fecha)
VALUES (3, 198, 'Llana','2020-07-29');
INSERT INTO etapas (numetapa, numkms, tipo, fecha)
VALUES (4, 139, 'Alta Montaña','2020-07-30');
INSERT INTO etapas (numetapa, numkms, tipo, fecha)
VALUES (5, 229, 'Alta Montaña','2020-07-31');
INSERT INTO etapas (numetapa, numkms, tipo, fecha)
VALUES (6, 49, 'Contrarreloj','2020-08-02');
INSERT INTO etapas (numetapa, numkms, tipo, fecha)
VALUES (7, 203, 'Media Montaña','2020-08-03');
INSERT INTO etapas (numetapa, numkms, tipo, fecha)
VALUES (8, 144, 'Llana','2020-08-04');
INSERT INTO etapas (numetapa, numkms, tipo, fecha)
VALUES (9, 175, 'Alta Montaña','2020-08-05');
INSERT INTO etapas (numetapa, numkms, tipo, fecha)
VALUES (10, 239, 'Llana','2020-08-06');

/*clasificacionesetapas*/

INSERT INTO clasificacionetapas (NumEtapa,Dorsal,Posicion,distaciaalganador)
VALUES(1,1,'1','0');
INSERT INTO clasificacionetapas (NumEtapa,Dorsal,Posicion,distaciaalganador)
VALUES(1,2,'Abandono',null);
INSERT INTO clasificacionetapas (NumEtapa,Dorsal,Posicion,distaciaalganador)
VALUES(1,4,'2','4');
INSERT INTO clasificacionetapas (NumEtapa,Dorsal,Posicion,distaciaalganador)
VALUES(1,5,'3','5');
INSERT INTO clasificacionetapas (NumEtapa,Dorsal,Posicion,distaciaalganador)
VALUES(2,1,'1','0');
INSERT INTO clasificacionetapas (NumEtapa,Dorsal,Posicion,distaciaalganador)
VALUES(2,4,'2','0');
INSERT INTO clasificacionetapas (NumEtapa,Dorsal,Posicion,distaciaalganador)
VALUES(2,5,'3','0');
INSERT INTO clasificacionetapas (NumEtapa,Dorsal,Posicion,distaciaalganador)
VALUES(2,8,'4','0');
INSERT INTO clasificacionetapas (NumEtapa,Dorsal,Posicion,distaciaalganador)
VALUES(2,10,'Abandono',null);
INSERT INTO clasificacionetapas (NumEtapa,Dorsal,Posicion,distaciaalganador)
VALUES(2,11,'5','0');
INSERT INTO clasificacionetapas (NumEtapa,Dorsal,Posicion,distaciaalganador)
VALUES(3,1,'1','0');
INSERT INTO clasificacionetapas (NumEtapa,Dorsal,Posicion,distaciaalganador)
VALUES(3,4,'2','57');
INSERT INTO clasificacionetapas (NumEtapa,Dorsal,Posicion,distaciaalganador)
VALUES(3,5,'3','65');
/*Apartado 4 */
update equipos set nombre="araba" where nombre="FDj";
/*Apartado 5 */
update etapas set premio="2400" where tipo="Contrarreloj";
/*Apartado 6 */
update etapas set numkms=numkms+10 where tipo="llana";
/*Apartado 7 */
select nombre from equipos where nacionalidad ="Española";
/*Apartado 8*/
select dorsal,nombre,fechanacimiento from ciclistas where nacionalidad ="Francesa";
/*Apartado 9 puede ser asc o desc*/
select nombre from ciclistas where codequipo = 1
and nacionalidad ="Española"order by nombre asc;
/*Apartado 10 unico carracter "_o%"*/
 select nombre,nombredirector from equipos where nombredirector like "_o%";

/*Aparatdo 11*/
SELECT * FROM ciclistas
WHERE (fechanacimiento>='1989-01-01' AND fechanacimiento<='1993-12-31')
OR nacionalidad = 'Francesa';
/*Aparatdo 12*/
select ciclistas.nombre,equipos.nombre
from ciclistas,equipos where ciclistas.codequipo=equipos.codequipo;
select ciclistas.nombre,equipos.nombre
from ciclistas join equipos on ciclistas.codequipo=equipos.codequipo;
/*Aparatdo 13*/
SELECT*from ciclistas,equipos where ciclistas.codequipo=equipos.codequipo
 and equipo.nombredirector="jose luis arrieta"
and ciclistas.nacionalidad="Colombiana";
/*Aparatdo 14*/
select ciclistas.nombre from ciclistas,clasificacionetapas
WHERE ciclistas.dorsal=clasificacionetapas.dorsal and posicion="Abandono";
/*Aparatdo 15*/
update clasificacionetapas set distaciaalganador =
  (select distaciaalganador from clasificacionetapas
    where posicion=2 and numetapa=3)where distaciaalganador>40;
    /*Aparatdo 16*/
    SELECT COUNT(ciclistas.nombre),equipos.nombre
    FROM ciclistas, equipos
    WHERE ciclistas.codequipo = equipos.codequipo
    GROUP BY (equipos.nombre);
    SELECT COUNT(Nombre),CODEquipo
    FROM CICLISTAS
    GRoup by CODEquipo;
    /*Aparatdo 17*/
SELECT avg(numkms),tipo from Etapas  WHERE numkms<150 GROUP BY (tipo);
