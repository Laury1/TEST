-- create a table
CREATE TABLE students (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  gender TEXT NOT NULL
);
-- insert some values
INSERT INTO students VALUES (1, 'Ryan', 'M');
INSERT INTO students VALUES (2, 'Joanna', 'F');
-- fetch some values
SELECT * FROM students WHERE gender = 'F';
CREATE TABLE AEROPORTO(Citta TEXT NOT NULL,
   Nazione TEXT NOT NULL,
    NumPiste INTEGER
    );
CREATE TABLE VOLO (IdVolo VARCHAR(255)PRIMARY KEY,
    GiornoSett TEXT,
    CittaPart TEXT NOT NULL,
    OraPart VARCHAR(255) ,
    CittaArr TEXT NOT NULL,
    OraArr VARCHAR(255),
    TipoAreo TEXT);
CREATE TABLE AERO(TipoAreo TEXT,
    NumPasseggeri INTEGER,
    QteMerci DOUBLE);
INSERT INTO AEROPORTO VALUES('Bergamo','Italia',16);
INSERT INTO AEROPORTO VALUES('Milano','Italia',4);
INSERT INTO AEROPORTO VALUES('Yaoundé','Camerun',14);
INSERT INTO AEROPORTO VALUES('Douala','Camerun',NULL);
INSERT INTO AEROPORTO VALUES('Abidjan','Costa Davorio',8);
INSERT INTO AEROPORTO VALUES('Rome','Italia',12);
INSERT INTO AEROPORTO VALUES('Bafousam','Camerun',10);   
INSERT INTO AEROPORTO VALUES('Torino','Italia',11); 
INSERT INTO AEROPORTO VALUES('Bergamo','Italia',16);
INSERT INTO AEROPORTO VALUES('Bologna','Italia',6);
INSERT INTO AEROPORTO VALUES('Bergamo','Italia',NULL);
INSERT INTO VOLO VALUES('1HSK','lunedi','Rome','8h30','Bergamo','9h45','AeroInter');
INSERT INTO VOLO VALUES('2JHK','lunedi','Torino','10h30','Douala','10h30','AeroInter');
INSERT INTO VOLO VALUES('3DAR','martedi','Rome','8h30','Bologna','9h45','AeroInter');
INSERT INTO VOLO VALUES('AZ274','martedi','Rome','8h30','Bergamo','9h45','AeroInter');
INSERT INTO VOLO VALUES('BL95','lunedi','Bergamo','10h30','Bergamo','11h45','AeroInter');
INSERT INTO VOLO VALUES('4ANS','mercoledi','Rome','8h30','Bergamo','9h45','AeroInter');
INSERT INTO VOLO VALUES('5ANH','mercoledi','Torino','8h30','Bergamo','9h45','AeroInter');
INSERT INTO VOLO VALUES('6BSN','lunedi','Douala','8h30','Abidjan','12h30','AeroMilitare');
INSERT INTO VOLO VALUES('7IND','','Rome','8h30','Bergamo','9h45','AeroInter');
INSERT INTO AERO VALUES('AeroInter',150,25000);
INSERT INTO AERO VALUES('AeroMilitare',300,2000);
INSERT INTO AERO VALUES('AeroCargo',150,20000);
INSERT INTO AERO VALUES('AeroReg',150,10000);
SELECT* FROM AEROPORTO;
SELECT* FROM VOLO;
SELECT* FROM AERO;
#le citta con un aeroporto di cui non è noto il numero di piste
SELECT Citta
FROM AEROPORTO
WHERE NumPiste IS NULL;
#le citta da cui partono i voli diretti à bologna
SELECT DISTINCT CittaPart
FROM VOLO
WHERE CittaArr='Bologna';
# i tipi di aereo usati nei voli che partono da Torino
SELECT TipoAreo
FROM VOLO 
WHERE CittaPart='Torino';
#le citta da cui parte e arriva il volo con codice AZ274
SELECT CittaPart,CittaArr
from VOLO
WHERE IdVolo='AZ274';
#




    
    
    