USE aerolinea 

--INSERTAR EN LA TABLA PILOTO 
INSERT INTO piloto 
VALUES     ('1111', 
            'Juan Perez', 
            2000); 

INSERT INTO piloto 
VALUES     ('2222', 
            'Carlos Mora', 
            5000); 

INSERT INTO piloto 
VALUES     ('3333', 
            'Marta Mena', 
            8000); 

INSERT INTO piloto 
VALUES     ('4444', 
            'Pedro Rojas', 
            4000); 

--INSERTAR EN LA TABLA DESTINO 
INSERT INTO destino 
VALUES     ('1D', 
            'San Jose'); 

INSERT INTO destino 
VALUES     ('2D', 
            'Panam�'); 

INSERT INTO destino 
VALUES     ('3D', 
            'Caracas'); 

INSERT INTO destino 
VALUES     ('4D', 
            'New York'); 

INSERT INTO destino 
VALUES     ('5D', 
            'Londres'); 

INSERT INTO destino 
VALUES     ('6D', 
            'Montereal'); 

--INSERTAR EN LA TABLA VUELO 
INSERT INTO vuelo 
VALUES     (520, 
            '1D', 
            '4D'); 

INSERT INTO vuelo 
VALUES     (618, 
            '2D', 
            '4D'); 

INSERT INTO vuelo 
VALUES     (705, 
            '1D', 
            '5D'); 

INSERT INTO vuelo 
VALUES     (820, 
            '3D', 
            '6D'); 

--INSERTAR EN LA TABLA PROGRAMACION 
INSERT INTO programacion 
VALUES     (520, 
            '01/25/1999', 
            '5:50', 
            '6:30', 
            '2222'); 

INSERT INTO programacion 
VALUES     (520, 
            '01/30/1999', 
            '12:36', 
            '16:23', 
            '3333'); 

INSERT INTO programacion 
VALUES     (618, 
            '02/02/1999', 
            '10:20', 
            '15:55', 
            '2222'); 

INSERT INTO programacion 
VALUES     (705, 
            '03/01/1999', 
            '16:15', 
            '5:29', 
            '1111'); 

INSERT INTO programacion 
VALUES     (705, 
            '03/05/1999', 
            '22:00', 
            '8:00', 
            '1111'); 

SELECT * 
FROM   piloto; 

SELECT * 
FROM   destino; 

SELECT * 
FROM   vuelo; 

SELECT * 
FROM   programacion; 