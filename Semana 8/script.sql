--CREATE DATABASE taller1;

CREATE TABLE marca
(
    id_marca       NUMERIC(5) NOT NULL,
    nombre_marca   VARCHAR(30) NULL,
    CONSTRAINT pk_marca PRIMARY KEY (id_marca)
);

CREATE TABLE modelo
(
    id_marca         NUMERIC(5)            NOT NUll,
    id_modelo        NUMERIC(5)            NOT NUll,
    descripcion_modelo  VARCHAR(30),
    CONSTRAINT pk_modelo PRIMARY KEY (id_marca , id_modelo)
);

CREATE TABLE vehiculo
(
    placa          VARCHAR(12)    NOT NUll,
    id_marca       NUMERIC(5),
    id_modelo      NUMERIC(5),
    ano            NUMERIC(4),
    cilindraje     NUMERIC(2),
    capacidad      NUMERIC(3),
    CONSTRAINT  pk_vehiculo PRIMARY KEY (placa)
);

ALTER TABLE modelo
        ADD CONSTRAINT fk_modelo_marca FOREIGN KEY (id_marca)
           REFERENCES marca (id_marca);

ALTER TABLE vehiculo
    ADD CONSTRAINT fk_vehiculo_modelo FOREIGN KEY  (id_marca, id_modelo)
  REFERENCES modelo (id_marca, id_modelo);

ALTER TABLE vehiculo ADD COLUMN
    motor VARCHAR(20) NOT NULL;
ALTER TABLE vehiculo ADD COLUMN
        chasis VARCHAR(20) NOT NULL;

ALTER TABLE marca ALTER COLUMN
nombre_marca TYPE VARCHAR(50);

ALTER TABLE marca ALTER COLUMN
nombre_marca SET NOT NULL;

CREATE TABLE persona
(
    cedula          VARCHAR(12)    NOT NULL,
    nombre          VARCHAR(50)    NOT NULL,   
    CONSTRAINT pk_persona PRIMARY KEY (cedula)
);

ALTER TABLE persona DROP COLUMN
nombre;

ALTER TABLE persona
DROP CONSTRAINT pk_persona;

ALTER TABLE persona ADD CONSTRAINT
pk_persona PRIMARY KEY (cedula);

DROP TABLE persona;

INSERT INTO marca VALUES(1,'NISSAN');

INSERT INTO marca VALUES(2,'TOYOTA');

INSERT INTO marca(id_marca,nombre_marca)
VALUES(3,'HYUNDAI');

INSERT INTO marca(id_marca)
VALUES(4);

INSERT INTO modelo(id_marca,id_modelo,descripcion_modelo) VALUES(1,1,'SENTRA');

INSERT INTO modelo(id_marca,id_modelo,descripcion_modelo) VALUES(1,2,'ALMERA');

INSERT INTO modelo(id_marca,id_modelo,descripcion_modelo) VALUES(1,3,'MURANO');

INSERT INTO modelo(id_marca,id_modelo,descripcion_modelo) VALUES(2,1,'COROLLA');

INSERT INTO modelo(id_marca,id_modelo,descripcion_modelo) VALUES(2,2,'YARIS');

INSERT INTO modelo(id_marca,id_modelo,descripcion_modelo) VALUES(3,1,'EXCEL');

INSERT INTO modelo(id_marca,id_modelo,descripcion_modelo) VALUES(3,2,'ELANTRA');

INSERT INTO modelo(id_marca,id_modelo,descripcion_modelo) VALUES(3,3,'ACCENT');



INSERT INTO vehiculo(placa,id_marca,id_modelo,
                     ano,cilindraje,capacidad,motor,chasis)
VALUES ('25364',1,2,1993,4,5,'25A','33B');

INSERT INTO vehiculo(placa,id_marca,id_modelo,
                     ano,cilindraje,capacidad,motor,chasis)
VALUES ('496258',3,1,2000,4,5,'X251','Z369');

INSERT INTO vehiculo(placa,id_marca,id_modelo,
                     ano,cilindraje,capacidad,motor,chasis)
VALUES ('396258',2,2,1987,4,5,'96EX','96SDC1');


SELECT * FROM MARCA;

SELECT * FROM MODELO;

SELECT * FROM VEHICULO

UPDATE VEHICULO SET MOTOR = 'WCH7896'
WHERE PLACA = '396258'; 

UPDATE VEHICULO SET ID_MODELO = 3
WHERE ID_MARCA = 1 AND ANO >= 1990;


DELETE FROM VEHICULO 
WHERE ID_MARCA=3;

DELETE FROM MODELO
WHERE ID_MARCA = 1 AND ID_MODELO = 2;