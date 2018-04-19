/* Présentation :
	nomScript: banque_base.sql
	nomBase: banque
	Auteur: Mélanie Lebeau
	Date de création : 16/11/2017
*/

/***************************************/
/*Suppression des tables existantes
DROP TABLE IF EXISTS (...) CASCADE*/
DROP TABLE IF EXISTS Operation, SousCompte, Compte, Banque;

/***************************************/
/*Création des tables
CREATE TABLE
	(primary key)*/

CREATE TABLE Operation(
	opId INT PRIMARY KEY NOT NULL,
	opLib VARCHAR(25),
	opDate DATE,
	opMontant INT,
	coId INT,
	scId INT
)ENGINE=InnoDB CHARSET=utf8;

CREATE TABLE SousCompte(
	scId INT PRIMARY KEY NOT NULL,
	scLib VARCHAR(25)
)ENGINE=InnoDB CHARSET=utf8;

CREATE TABLE Compte(
	coId INT PRIMARY KEY NOT NULL,
	coLib VARCHAR(25),
	coAvoirReel INT,
	bqId INT
)ENGINE=InnoDB CHARSET=utf8;

CREATE TABLE Banque(
	bqId INT PRIMARY KEY NOT NULL,
	bqLib VARCHAR(25),
	bqSiteWeb VARCHAR(100)
)ENGINE=InnoDB CHARSET=utf8;

/***************************************/
/*Mise en oeuvre du CIF
ALTER TABLE
	ADD FOREIGN KEY*/

ALTER TABLE Operation
	ADD FOREIGN KEY (coId) REFERENCES Compte(coId),
	ADD FOREIGN KEY (scId) REFERENCES SousCompte(scId);

ALTER TABLE Compte
	ADD FOREIGN KEY (bqId) REFERENCES Banque(bqId);