INSERT INTO Client 
	(civilite, nom, prenom, e_mail,password)
VALUES 
	('M.', 'GARCIA', 'CARLOS', 'CGMUSKAT@GMAIL.COM', 'PASSWORD'),
    ('M.', 'DUPRÈ', 'JACQUES', 'JQ@GMAIL.COM', 'PAZSWORD');

INSERT INTO Adresses 
	(nom_adresse, adresse, complement_adresse, code_postal, ville, client_id)
VALUES 
	('Maison', '25 rue de Thionville', '1er Étage', '59800', 'Lille',1),
    ('Bureau', '3 rue de la clef', 'bat C', '59800', 'Lille',1),
    ('BUREAU', '36 rue de la tourelle', '', '59800', 'Lille',2);


INSERT INTO Dessert 
	(nom, prix)
VALUES
	('GLACE','4');

INSERT INTO Ligne_Dessert
	(quantite, dessert_id) 
VALUES
	('1', 1);

INSERT INTO Boisson
	(nom, prix) 
VALUES
	('coca-cola light','1.50'),
    ('ORANGINA','1.50');

INSERT INTO Ligne_boisson
	(quantite, boisson_id)
VALUES
	('1', 1),
	('1', 2);

INSERT INTO Pizza
	(taille,prix, nom) 
VALUES
	('XL', '12', 'NomPizza1'),
    ('L', '8', 'NomPizza2');

INSERT INTO Ligne_Pizza
	(quantite, pizza_id)
VALUES
	('2',1),
    ('1', 2);

INSERT INTO Ingredients
	(nom) 
VALUES
	('sauce tomate'),
    ('sauce blanche'),
    ('peperoni'),
    ('rooquefort'),
    ('anchois'),
    ('parmessan'),
    ('roquette'),
    ('mozarella'),
    ('chorizo'),
    ('chèvre');    

INSERT INTO Quantite
	(quantite_ingredient, ingredients_id)
VALUES
	('1', 1),
    ('1', 2),
	('6', 3),
    ('4', 4),
    ('4', 5),
    ('5', 6),
    ('1', 7),
    ('5', 8),
    ('8', 9),
    ('4', 10);

INSERT INTO Menu 
	(nom)
VALUES
	('NomMenu1'),
    ('NomMenu2');

INSERT INTO Ligne_Menu
	(ligne_pizza_id, ligne_dessert_id, ligne_boisson_id, menu_id, prix) 
VALUES
	(1, 1, 1, 1,'24'),
    (2, null, 2, 2,'12');
    
INSERT INTO Mode_Paiement
	(carte_bancaire, especes, cheque)
VALUES
	('0', '1', '0'),
    ('1', '0', '0');

INSERT INTO Commande
	(date, nom, adresse, complement_adresse, code_postal, ville, prix_total, client_id, mode_Paiement_id) 
VALUES
	('2018-12-10', 'GARCIA', '25 rue de Thionville', '1er Étage', '59800', 'LILLE', '24', 1, 1),
    ('2018-12-10', 'DUPRÈ', '36 rue de la tourelle', '', '59800', 'Lille', '12', 2, 2);
    
INSERT INTO Pizzaiolo
	(nom, n_Securite_Sociale) 
VALUES
	('GERARD', '5684598823'),
    ('RICO', '8591348597');
    
INSERT INTO Ligne_Commande
	(prix, quantite, commande_id, ligne_menu_id, ligne_pizza_id) 
VALUES
	('24', '1', 1, 1, 1),
    ('12','1', 2, 2, 2);
    
INSERT INTO Ligne_Commande_has_Pizzaiolo
	(ligne_commande_id, pizzaiolo_id)
VALUES
	(1, 1),
    (2, 2);

INSERT INTO Pizzeria
	(numero_Siret, nom_gerant, adresse, complement_adresse, code_postal, ville) 
VALUES
	('85496374521008', 'DUSSOLLIER', '20 GRAND PLACE', '', '59000', 'LILLE'),
    ('46485793548657', 'DUPONTEL', '40 CHAMPS ELYSÉES','', '75116','PARIS');
    
INSERT INTO Facture
	(date, montant, pizzeria_numero_Siret, commande_id)
VALUES
	('2018-12-10', '24', '85496374521008', 1),
    ('2018-12-10', '12', '46485793548657', 2);

INSERT INTO Stocks
	(quantite, pizzeria_numero_Siret) 
VALUES
	('40', '85496374521008'),
    ('20', '46485793548657');

INSERT INTO 
	Ingredients_has_Stocks (Ingredients_id, Stocks_id ) 
VALUES 
	(1,1),(2,1),(3,2),(4,2),(5,1),(6,2),(7,1),(8,1),(9,2),(10,1); 
    
INSERT INTO Pizza_has_Quantite
	(Pizza_id, Quantite_id)
VALUES
	(1,1),
	(2,2);