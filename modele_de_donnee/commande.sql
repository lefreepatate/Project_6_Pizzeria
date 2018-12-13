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
	(quantite_ingredient)
VALUES
	('1'),
    ('1'),
	('6'),
    ('4'),
    ('4'),
    ('5'),
    ('1'),
    ('5'),
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

INSERT INTO 
	Stocks_has_Ingredients (Stocks_id, Ingredients_id) 
VALUES 
	(1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10); 
    
INSERT INTO 
	Stocks_has_pizzeria (Stocks_id,Pizzeria_numero_Siret)
VALUES
	(1,85496374521008),(2,46485793548657);

INSERT INTO Quantite_has_Pizza
	(Quantite_id, Pizza_id, Pizza_Ligne_Pizza_id)
VALUES
	(2,1,1),
	(1,2,2);



/* Updating foreing keys */

UPDATE Commande SET Client_id = 1 where id = 1 ;
UPDATE Commande SET Client_id = 2 where id = 2 ;

UPDATE dessert SET Ligne_dessert_id = 1 where id = 1 ;
UPDATE dessert SET Ligne_dessert_id = 2 where id = 2 ;

UPDATE ligne_dessert SET Menu_id = 1 where id = 1;
UPDATE ligne_dessert SET Menu_id = 2 where id = 2;
UPDATE ligne_dessert SET Menu_Ligne_Commande_id = 1 where id = 1;
UPDATE ligne_dessert SET Menu_Ligne_Commande_id = 2 where id = 2;
UPDATE ligne_dessert SET Menu_Ligne_Commande_Commande_id = 1 where id = 1;
UPDATE ligne_dessert SET Menu_Ligne_Commande_Commande_id = 2 where id = 2;
UPDATE ligne_dessert SET Menu_Ligne_Commande_Commande_Client_id = 1 where id = 1;
UPDATE ligne_dessert SET Menu_Ligne_Commande_Commande_Client_id = 2 where id = 2;

UPDATE boisson SET Ligne_Boisson_id = 1 where id = 1 ;
UPDATE boisson SET Ligne_Boisson_id = 2 where id = 2 ;

UPDATE ligne_boisson SET Menu_id = 1 where id = 1;
UPDATE ligne_boisson SET Menu_id = 2 where id = 2;
UPDATE ligne_boisson SET Menu_Ligne_Commande_id = 1 where id = 1;
UPDATE ligne_boisson SET Menu_Ligne_Commande_id = 2 where id = 2;
UPDATE ligne_boisson SET Menu_Ligne_Commande_Commande_id = 1 where id = 1;
UPDATE ligne_boisson SET Menu_Ligne_Commande_Commande_id = 2 where id = 2;
UPDATE ligne_boisson SET Menu_Ligne_Commande_Commande_Client_id = 1 where id = 1;
UPDATE ligne_boisson SET Menu_Ligne_Commande_Commande_Client_id = 2 where id = 2;

UPDATE pizza SET Ligne_pizza_id = 1 where id = 1 ;
UPDATE pizza SET Ligne_pizza_id = 2 where id = 2 ;

UPDATE ligne_pizza SET Menu_id = 1 where id = 1;
UPDATE ligne_pizza SET Menu_id = 2 where id = 2;
UPDATE ligne_pizza SET Menu_Ligne_Commande_id = 1 where id = 1;
UPDATE ligne_pizza SET Menu_Ligne_Commande_id = 2 where id = 2;
UPDATE ligne_pizza SET Menu_Ligne_Commande_Commande_id = 1 where id = 1;
UPDATE ligne_pizza SET Menu_Ligne_Commande_Commande_id = 2 where id = 2;
UPDATE ligne_pizza SET Menu_Ligne_Commande_Commande_Client_id = 1 where id = 1;
UPDATE ligne_pizza SET Menu_Ligne_Commande_Commande_Client_id = 2 where id = 2;

UPDATE Pizzaiolo SET Ligne_Commande_id = 1 where id = 1;
UPDATE Pizzaiolo SET Ligne_Commande_id = 2 where id = 2;
UPDATE Pizzaiolo SET Ligne_Commande_Commande_id = 1 where id = 1;
UPDATE Pizzaiolo SET Ligne_Commande_Commande_id = 2 where id = 2;
UPDATE Pizzaiolo SET Ligne_Commande_Commande_Client_id = 1 where id = 1;
UPDATE Pizzaiolo SET Ligne_Commande_Commande_Client_id = 2 where id = 2;

UPDATE menu SET Ligne_Commande_id = 1 where id = 1;
UPDATE menu SET Ligne_Commande_id = 2 where id = 2;
UPDATE menu SET Ligne_Commande_Commande_id = 1 where id = 1;
UPDATE menu SET Ligne_Commande_Commande_id = 2 where id = 2;
UPDATE menu SET Ligne_Commande_Commande_Client_id = 1 where id = 1;
UPDATE menu SET Ligne_Commande_Commande_Client_id = 2 where id = 2;

UPDATE Ligne_Commande SET commande_id = 1 where id = 1 ;
UPDATE Ligne_Commande SET commande_id = 2 where id = 2 ;
UPDATE Ligne_Commande SET commande_client_id = 1 where id = 1 ;
UPDATE Ligne_Commande SET commande_client_id = 2 where id = 2 ;

UPDATE Mode_Paiement SET commande_id = 1 where id = 1 ;
UPDATE Mode_Paiement SET commande_id = 2 where id = 2 ;
UPDATE Mode_Paiement SET commande_client_id = 1 where id = 1 ;
UPDATE Mode_Paiement SET commande_client_id = 2 where id = 2 ;

UPDATE facture SET commande_id = 1 where id = 1 ;
UPDATE facture SET commande_id = 2 where id = 2 ;
UPDATE facture SET commande_client_id = 1 where id = 1 ;
UPDATE facture SET commande_client_id = 2 where id = 2 ;
UPDATE facture SET pizzeria_numero_Siret = '85496374521008' where id = 1 ;
UPDATE facture SET pizzeria_numero_Siret = '46485793548657' where id = 2 ;

UPDATE Quantite SET Ingredients_id = 1 where id = 1 ;
UPDATE Quantite SET Ingredients_id = 2 where id = 2 ;
UPDATE Quantite SET Ingredients_id = 3 where id = 3 ;
UPDATE Quantite SET Ingredients_id = 4 where id = 4 ;
UPDATE Quantite SET Ingredients_id = 5 where id = 5 ;
UPDATE Quantite SET Ingredients_id = 6 where id = 6 ;
UPDATE Quantite SET Ingredients_id = 7 where id = 7 ;
UPDATE Quantite SET Ingredients_id = 8 where id = 8 ;
UPDATE Quantite SET Ingredients_id = 9 where id = 9 ;
UPDATE Quantite SET Ingredients_id = 10 where id = 10 ;
