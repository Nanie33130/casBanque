

DELETE FROM Operation;
DELETE FROM Compte;
DELETE FROM SousCompte;
DELETE FROM Banque;

INSERT INTO Banque VALUES (0, 'Caisse d''épargne', '');
INSERT INTO Banque VALUES (1, 'La Banque Postale', '');
INSERT INTO Banque VALUES (2, 'Crédit Agricole', '');

INSERT INTO Compte VALUES (0, 'Compte chèque', 100,0);
INSERT INTO Compte VALUES (1, 'livret A', 238.22,0);
INSERT INTO Compte VALUES (2, 'livret DD', 0,1);
INSERT INTO Compte VALUES (3, 'PEA', 0,NULL);

INSERT INTO SousCompte VALUES (0, 'Alimentation');
INSERT INTO SousCompte VALUES (1, 'Voiture');
INSERT INTO SousCompte VALUES (2, 'Sport');
INSERT INTO SousCompte VALUES (3, 'Loisirs');
INSERT INTO SousCompte VALUES (4, 'Assurance');
INSERT INTO SousCompte VALUES (5, 'Loyer');
INSERT INTO SousCompte VALUES (6, 'Salaire');
INSERT INTO SousCompte VALUES (7, 'Santé');
INSERT INTO SousCompte VALUES (8, 'Virement parents');
INSERT INTO SousCompte VALUES (9, 'Retrait');

INSERT INTO Operation VALUES (0,'Virement février','2017-02-01',600,0,8);
INSERT INTO Operation VALUES (1,'Loyer appartement','2017-02-05',-310,0,5);
INSERT INTO Operation VALUES (2,'Leclerc','2017-02-06',-36.55,0,0);
INSERT INTO Operation VALUES (3,'Géant','2017-02-11',-31.12,0,0);
INSERT INTO Operation VALUES (4,'Pharmacie','2017-02-11',12.30,0,7);
INSERT INTO Operation VALUES (5,'Caisse Epargne','2017-02-12',20,0,9);
INSERT INTO Operation VALUES (6,'Essence, Leclerc','2017-02-12',35,0,1);
INSERT INTO Operation VALUES (7,'Livre','2017-02-15',18.50,0,3);
INSERT INTO Operation VALUES (8,'Loyer appartement','2017-02-05',310,0,5);
INSERT INTO Operation VALUES (9,'Cadeau Noël','2017-01-01',500,1,8);

