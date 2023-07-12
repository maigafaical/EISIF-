CREATE DATABASE
    maiga_faical 
    --creation des tables--
    --creation table_client--
CREATE TABLE table_clients (
        id_client INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
        nom VARCHAR(50) NOT NULL,
        prenom VARCHAR(25) NOT NULL,
        adresse VARCHAR(25) NOT NULL,
        pays VARCHAR(25) NOT NULL,
        telephone int(25) NOT NULL
    );

--Fin table_client--

--création de table _fournisseurs--

CREATE TABLE
    table_fournisseurs(
        id_fournisseur INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
        nom VARCHAR(20) NOT NULL,
        prenom VARCHAR(25) NOT NULL,
        adresse VARCHAR(20) NOT NULL,
        pays VARCHAR(25) NOT NULL,
        telephone int(25) NOT NULL,
        email VARCHAR(50) NOT NULL
    );

--fin table_fournisseurs--

--création de table_catégories--

CREATE TABLE
    table_categories(
        id_categorie INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
        libelle VARCHAR(50) NOT NULL
    );

--fin de table_catégories--

--création de table_articles--

CREATE TABLE
    table_articles (
        id_article int NOT NULL AUTO_INCREMENT,
        designation VARCHAR(25) NOT NULL,
        id_categorie int NOT NULL,
        marque VARCHAR(20) NOT NULL,
        quantite int(20) NOT NULL,
        PRIMARY KEY (id_article),
        FOREIGN KEY (id_categorie) REFERENCES table_categories (id_categorie)
    );

--Fin de table_articles--

--création de table_achats--

CREATE TABLE
    IF NOT EXISTS table_achats(
        id_achat INT NOT NULL PRIMARY KEY  AUTO_INCREMENT,
        id_fournisseur int NOT NULL,
        id_article int NOT NULL,
        quantite int(100) NOT NULL,
        prix_unitaire INT(100) NOT NULL,
        Foreign Key (id_fournisseur) REFERENCES table_fournisseurs (id_fournisseur),
        Foreign Key (id_article) REFERENCES table_articles (id_article)
    );

--Fin de table_achats--

--création table_ventes--

CREATE TABLE
    IF NOT EXISTS table_ventes(
        id_ventes int NOT NULL AUTO_INCREMENT,
        id_client int NOT NULL,
        id_article int NOT NULL,
        quantite int(100) NOT NULL,
        prix_unitaire INT(100) NOT NULL,
        PRIMARY KEY(id_ventes),
        Foreign Key (id_client) REFERENCES table_clients (id_client),
        Foreign Key (id_article) REFERENCES table_articles (id_article)
    );

--Fin de table_ventes--

--insertion des données--

--table_client--

INSERT INTO
    table_clients (
        nom,
        prenom,
        adresse,
        pays,
        telephone
    )
VALUES (
        'MAIGA',
        'FAICAL',
        'Secteur 19',
        'B.F',
        '54582248'
    ), (
        'KABORE',
        'ABDOUL',
        'Secteur 17',
        'B.F',
        '77522260'
    ), (
        'BOUDA',
        'MAIMOUNA',
        'Secteur 19',
        'B.F',
        '54582248'
    ), (
        'CISSE',
        'MARIAM',
        'Secteur 1',
        'MLI',
        '54582246'
    ), (
        'PANGUI',
        'OLIVIA',
        'Secteur 40',
        'C.I',
        '54582258'
    ), (
        'MAIGA',
        'ABOUL-WAHAB',
        'Secteur 19',
        'FR',
        '1054582248'
    );

--table_fournisseur--

INSERT INTO
    table_fournisseurs (
        nom,
        prenom,
        adresse,
        pays,
        telephone,
        email
    )
VALUES (
        'OUEDRAO',
        'AZIZ',
        'Secteur 19',
        'B.F',
        '54582249',
        'aziz45@gmail.com'
    ), (
        'NANA',
        'BOUREIMA',
        'Secteur 17',
        'B.F',
        '77522261',
        'boureima@gmail.com'
    ), (
        'ILBOUDO',
        'MAIMOUNA',
        'Secteur 19',
        'B.F',
        '54582240',
        'maimouna@gmail.com'
    ), (
        'KEITA',
        'FADILA',
        'Secteur 1',
        'MLI',
        '94582148',
        'fadila@gmail.com'
    ), (
        'SANFO',
        'MARIE',
        'Secteur 40',
        'C.I',
        '94582249',
        'marie@gmail.com'
    );

--table catégorie--

INSERT INTO
    table_categories (libelle)
VALUES
('informatique'), ('electronique'), ( 'electro-menager');

--table-articles--
INSERT INTO table_articles(id_categorie,designation,marque,quantite)
VALUES (
        '1',
        'ordinateur',
        'HP probook',
        '50'
        ),
        (
        '2',
        'télé',
        'samsung ecran"50"',
        '10'
        ),
        (
        '3',
        'Fourre',
        'LG',
        '100'
        ),
        (
        '2',
        'Tondeuse',
        'Mio',
        '100'
        ),
        (
        '1',
        'Souris',
        'samsung',
        '10'
        ),
        (
        '3',
        'Gaz',
        'Sodigaz',
        '100'
        );
--table achat--
INSERT INTO table_achats(id_fournisseur, id_article,quantite,prix_unitaire)
VALUES (
        '3',
        '1',
        '100',
        '10000'
        ),
        (
        '1',
        '2',
        '25',
        '3600'
        ),
        (
        '4',
        '2',
        '100',
        '7000'
        ),
        (
        '2',
        '4',
        '9',
        '5500'
        ),
        (
        '3',
        '3',
        '40',
        '8250'
        );
--table vente--
INSERT INTO table_ventes(id_client, id_article,quantite,prix_unitaire)
VALUES (
        '3',
        '1',
        '100',
        '5250'
        ),
        (
        '1',
        '2',
        '25',
        '2600'
        ),
        (
        '4',
        '2',
        '100',
        '9000'
        ),
        (
        '2',
        '4',
        '9',
        '7500'
        ),
        (
        '3',
        '3',
        '50',
        '8000'
        );