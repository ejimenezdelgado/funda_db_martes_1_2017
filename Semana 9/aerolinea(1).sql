CREATE DATABASE aerolinea; 

USE aerolinea; 

CREATE TABLE piloto 
  ( 
     licencia    VARCHAR(20) NOT NULL, 
     nombre      VARCHAR(100) NOT NULL, 
     horas_vuelo NUMERIC(10) NOT NULL 
  ); 

CREATE TABLE vuelo 
  ( 
     vuelo  NUMERIC(10) NOT NULL, 
     inicio VARCHAR(50) NOT NULL, 
     final  VARCHAR(50) NOT NULL, 
  ); 

CREATE TABLE programacion 
  ( 
     vuelo        NUMERIC(10) NOT NULL, 
     fecha        DATETIME NOT NULL, 
     hora_salida  VARCHAR(10) NOT NULL, 
     hora_llegada VARCHAR(10) NOT NULL, 
     piloto       VARCHAR(20) NOT NULL, 
  ); 

CREATE TABLE destino 
  ( 
     destino     VARCHAR(50) NOT NULL, 
     descripcion VARCHAR(100) NOT NULL, 
  ); 