-- Active: 1736077808406@@127.0.0.1@3306@rumah_sakit
USE rumah_sakit;
--Fatih Daffaul Dzaki
--24SA11A062
 SET autocommit = 0;
 START TRANSACTION;
 INSERT INTO tbpasien VALUES ('A2348','Rahamat','2003-11-09','Jepara','823999');
 ROLLBACK;
  
  SELECT * FROM tbpasien;

 CREATE USER 'admin1'@'localhost' IDENTIFIED BY 'admin123';
 GRANT ALL PRIVILEGES ON rumah_sakit.* to 'admin1'@'localhost';
 REVOKE ALL PRIVILEGES ON rumah_sakit.tbdetailbayar from 'admin1'@'localhost';

--Fatih Daffaul Dzaki
--24SA11A062
SET autocommit = 0;
START TRANSACTION;
UPDATE tbpasien SET `namaPasien` = 'Rahmat'
WHERE idpasien = 'A2348';
SAVEPOINT a;
INSERT INTO tbpasien VALUES ('A2349','Raya','2009-09-09','Karangraja',084467658);
SAVEPOINT b;
INSERT INTO tbpasien VALUES ('A2350','Dainah','2009-07-11','Karangraja',084498643);
ROLLBACK TO b;
ROLLBACK TO a;

SELECT * FROM tbpasien;

--Fatih Daffaul Dzaki
--24SA11A062
LOCK TABLE tbdokter READ;
UNLOCK TABLE;

SELECT * FROM tbdokter;

--Fatih Daffaul Dzaki
--24SA11A062
LOCK TABLE tbobat WRITE;

--Fatih Daffaul Dzaki
--24SA11A062
START TRANSACTION ;
SELECT* FROM tbobat WHERE `idObat`= 'O-14' FOR UPDATE;
unlock table;

