-- Modélisation de la base de données UC intégrée et d'après les besoins du DSI

-- Table des sites
CREATE TABLE Site (
    id INT PRIMARY KEY,
    nom VARCHAR(255),
    latitude FLOAT,
    longitude FLOAT
);

-- Table des salariés
CREATE TABLE Salarie (
    id INT PRIMARY KEY,
    nom VARCHAR(255),
    prenom VARCHAR(255),
    age INT,
    date_embauche DATE,
    site_id INT,
    FOREIGN KEY (site_id) REFERENCES Site(id)
);

-- Table des vaccins
CREATE TABLE Vaccin (
    id INT PRIMARY KEY,
    nom_maladie VARCHAR(255),
    duree_vaccin INT
);

-- Table des injections
CREATE TABLE Injection (
    id INT PRIMARY KEY,
    date_vaccination DATE,
    salarie_id INT NOT NULL,
    vaccin_id INT NOT NULL,
    FOREIGN KEY (salarie_id) REFERENCES Salarie(id),
    FOREIGN KEY (vaccin_id) REFERENCES Vaccin(id)
);

-- Table des scientifiques
CREATE TABLE Scientifique (
    id INT PRIMARY KEY,
    nom VARCHAR(255),
    prenom VARCHAR(255),
    date_checkup_vaccin DATE
);

-- Table des médicaments
CREATE TABLE Medicament (
    id INT PRIMARY KEY,
    nom VARCHAR(255),
    description TEXT,
    date_approbation DATE,
    scientifique_id INT NOT NULL,
    FOREIGN KEY (scientifique_id) REFERENCES Scientifique(id)
);

-- Table des ingrédients
CREATE TABLE Ingredient (
    id INT PRIMARY KEY,
    nom VARCHAR(255),
    description TEXT
);

-- Relation entre médicaments et ingrédients
CREATE TABLE Medicament_Ingredient (
    medicament_id INT NOT NULL,
    ingredient_id INT NOT NULL,
    PRIMARY KEY (medicament_id, ingredient_id),
    FOREIGN KEY (medicament_id) REFERENCES Medicament(id),
    FOREIGN KEY (ingredient_id) REFERENCES Ingredient(id)
);

-- Table des conditions environnementales
CREATE TABLE Condition_Environnementale (
    id INT PRIMARY KEY,
    description TEXT,
    temperature_min FLOAT,
    temperature_max FLOAT,
    humidite_min FLOAT,
    humidite_max FLOAT
);

-- Relation entre médicaments et conditions environnementales
CREATE TABLE Medicament_Condition (
    medicament_id INT NOT NULL,
    condition_id INT NOT NULL,
    PRIMARY KEY (medicament_id, condition_id),
    FOREIGN KEY (medicament_id) REFERENCES Medicament(id),
    FOREIGN KEY (condition_id) REFERENCES Condition_Environnementale(id)
);

-- Relation entre ingrédients et conditions environnementales
CREATE TABLE Ingredient_Condition (
    ingredient_id INT NOT NULL,
    condition_id INT NOT NULL,
    PRIMARY KEY (ingredient_id, condition_id),
    FOREIGN KEY (ingredient_id) REFERENCES Ingredient(id),
    FOREIGN KEY (condition_id) REFERENCES Condition_Environnementale(id)
);
