USE aerolinea; 

ALTER TABLE piloto 
  ADD CONSTRAINT pk_piloto PRIMARY KEY (licencia); 

ALTER TABLE vuelo 
  ADD CONSTRAINT pk_vuelo PRIMARY KEY (vuelo); 

ALTER TABLE programacion 
  ADD CONSTRAINT pk_programacion PRIMARY KEY (vuelo, fecha); 

ALTER TABLE destino 
  ADD CONSTRAINT pk_destino PRIMARY KEY (destino); 

---------------------------------- 
ALTER TABLE programacion 
  ADD CONSTRAINT fk_programacion_vuelo FOREIGN KEY (vuelo) REFERENCES vuelo ( 
  vuelo); 

ALTER TABLE programacion 
  ADD CONSTRAINT fk_programacion_piloto FOREIGN KEY (piloto) REFERENCES piloto ( 
  licencia); 

ALTER TABLE vuelo 
  ADD CONSTRAINT fk_vuelo_destino FOREIGN KEY (inicio) REFERENCES destino ( 
  destino); 

ALTER TABLE vuelo 
  ADD CONSTRAINT fk_vuelo_destino2 FOREIGN KEY (final) REFERENCES destino ( 
  destino); 