INSERT INTO Client 
	(civilite, nom, prenom, e_mail,password)
VALUES 
	('M.', 'GARCIA', 'CARLOS', 'CGMUSKAT@GMAIL.COM', 'PASSWORD'),
    ('M.', 'DUPRÈ', 'JACQUES', 'JQ@GMAIL.COM', 'PAZSWORD');

INSERT INTO Adresses 
	(nom_adresse, adresse, complement_adresse, code_postal, ville)
VALUES 
	('Maison', '25 rue de Thionville', '1er Étage', '59800', 'Lille'),
    ('BUREAU', '36 rue de la tourelle', '', '59800', 'Lille');


INSERT INTO Dessert 
	(nom, prix)
VALUES
	('GLACE','4'),
    ('0','0');

INSERT INTO Ligne_Dessert
	(quantite) 
VALUES
	('1'),
    ('0');

INSERT INTO Boisson
	(nom, prix) 
VALUES
	('coca-cola light','1.50'),
    ('ORANGINA','1.50');

INSERT INTO Ligne_boisson
	(quantite)
VALUES
	('1'),
	('1');

INSERT INTO Pizza
	(taille,prix) 
VALUES
	('XL', '12'),
    ('L', '8');

INSERT INTO Ligne_Pizza
	(quantite)
VALUES
	('2'),
    ('1');

INSERT INTO Ingredients
	(nom) 
VALUES
	('sauce tomate'),
    ('sauce blanche');

INSERT INTO Quantite
	(quantite_ingredient)
VALUES
	('1'),
    ('1');

INSERT INTO Ingredients
	(nom) 
VALUES
	('peperoni'),
    ('rooquefort');

INSERT INTO Quantite
	(quantite_ingredient) 
VALUES
	('6'),
    ('4');

INSERT INTO Ingredients
	(nom) 
VALUES
	('anchois'),
    ('parmessan');

INSERT INTO Quantite
	(quantite_ingredient) 
VALUES
	('4'),
    ('5');

INSERT INTO Ingredients
	(nom)
    VALUES
	('roquette'),
    ('mozarella');

INSERT INTO Quantite
	(quantite_ingredient)
VALUES
	('1'),
    ('5');

INSERT INTO Ingredients
	(nom) 
VALUES
	('chorizo'),
    ('chèvre');

INSERT INTO Quantite
	(quantite_ingredient) 
    VALUES
	('8'),
    ('4');

INSERT INTO Menu
	(pizza, boisson, dessert, prix) 
VALUES
	('2', '1', '1', '24'),
    ('1','1','0','12');

INSERT INTO Ligne_Commande
	(prix, quantite) 
VALUES
	('24', '1'),
    ('12','1');

INSERT INTO Commande
	(date, nom, adresse, complement_adresse, code_postal, ville, prix_total) 
VALUES
	('2018-12-10', 'GARCIA', '25 rue de Thionville', '1er Étage', '59800', 'LILLE', '24'),
    ('2018-12-10', 'DUPRÈ', '36 rue de la tourelle', '', '59800', 'Lille', '12');

INSERT INTO Facture
	(date, montant)
VALUES
	('2018-12-10', '24'),
    ('2018-12-10', '12');

INSERT INTO Mode_Paiement
	(carte_bancaire, especes, cheque)
VALUES
	('0', '1', '0'),
    ('1', '0', '0');

INSERT INTO Pizzaiolo
	(nom, n_Securite_Sociale) 
VALUES
	('GERARD', '5684598823'),
    ('RICO', '8591348597');

INSERT INTO Pizzeria
	(numero_Siret, nom_gerant, adresse, complement_adresse, code_postal, ville) 
VALUES
	('85496374521008', 'DUSSOLLIER', '20 GRAND PLACE', '', '59000', 'LILLE'),
    ('46485793548657', 'DUPONTEL', '40 CHAMPS ELYSÉES','', '75116','PARIS');

INSERT INTO Stocks
	(quantite) 
VALUES
	('40'),
    ('20');







