-- Mi primer BLoque PL SQL HOLA MUNDO
-- Modo de DEPURACION

SET SERVEROUTPUT ON;
BEGIN
--Aqu� va la l�gica
DBMS_OUTPUT.PUT_LINE('HOLA MUNDO');
--OUTPUT.PUT_LINE('Mensaje') [Imprimir una l�nea. Es una funci�n]
END;
/


--Segundo Bloque PL SQL usando Declaraci�n de variables
DECLARE
EDAD integer;
NOMBRE varchar2(40);
DIAS integer;
BEGIN
--Asignamos esas variables
EDAD:=21;
--Sacamos tu edad en DIAS
DIAS:=EDAD*365;
NOMBRE:='Ana';
DBMS_OUTPUT.PUT_LINE('Buenos Dias '|| NOMBRE || ' tu edad en dias '|| DIAS);
END;
/


--EJERCICIO 3
-- Paso 1
CREATE TABLE CHICOS 
(
ID integer PRIMARY KEY,
VALOR integer
);
-- Paso 2
CREATE TABLE GRANDES
(
ID integer PRIMARY KEY,
VALOR integer
);



DECLARE 
EDAD integer;
BEGIN
--Asignamos una edad 
EDAD:=10;

IF EDAD>18 THEN 

INSERT INTO GRANDES values (3,EDAD);
ELSE
INSERT INTO CHICOS values (3,EDAD);
END IF;
END;
/
--COMPROBACI�N
SELECT * FROM GRANDES;
SELECT * FROM CHICOS;

