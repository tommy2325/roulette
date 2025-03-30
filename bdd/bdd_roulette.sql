-- Création de la base de données
DROP DATABASE IF EXISTS bdd_roulette;
CREATE DATABASE bdd_roulette;
USE bdd_roulette;

-- Structure de la table 'classes'
CREATE TABLE classes (
    idC INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nomC VARCHAR(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Contenu de la table "classes"
INSERT INTO classes (nomC) VALUES 
("SIO2"),
("SLAM2"),
("SISR2");

-- Structure de la table 'eleves'
CREATE TABLE eleves (
    idE INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    prenomE VARCHAR(50) NOT NULL,
    nomE VARCHAR(50) NOT NULL,
    statutE BOOLEAN DEFAULT false,
    idC INT UNSIGNED NOT NULL,
    FOREIGN KEY (idC) REFERENCES classes(idC) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Contenu de la table "eleves"
INSERT INTO eleves (nomE, prenomE, idC) VALUES
("Léo", "Martin", 1),
("Arthur", "Dupont", 1),
("Thomas", "Lefevre", 1),
("Julien", "Moreau", 1),
("Maxime", "Petit", 1),
("Vincent", "Robert", 1),
("Lucas", "Bernard", 1),
("Antoine", "Durand", 1),
("Pierre", "Lefevre", 1),
("Michel", "Caron", 1),
("Claire", "Lefevre", 1),
("Emilie", "Dubois", 1),
("François", "Martin", 1),
("Éric", "Lambert", 1),
("Marc", "Boucher", 1),
("Henri", "Lefevre", 1),
("Sophie", "Lefevre", 1),
("Julien", "Laurent", 1),
("Nathalie", "Robert", 1),
("Xavier", "Lemoine", 1),
("Geoffrey", "Dumas", 1),
("Olivier", "Dufresne", 1),
("Hélène", "Charpentier", 1),
("Marcel", "Dupuis", 1),
("Benoît", "Durand", 1),
("Léo", "Martin", 2),
("Arthur", "Dupont", 2),
("Thomas", "Lefevre", 2),
("Julien", "Moreau", 2),
("Maxime", "Petit", 2),
("Vincent", "Robert", 2),
("Lucas", "Bernard", 2),
("Antoine", "Durand", 2),
("Pierre", "Lefevre", 2),
("Michel", "Caron", 2),
("Claire", "Lefevre", 2),
("Emilie", "Dubois", 2),
("François", "Martin", 2),
("Éric", "Lambert", 2),
("Marc", "Boucher", 2),
("Henri", "Lefevre", 2),
("Sophie", "Lefevre", 2),
("Julien", "Laurent", 2),
("Nathalie", "Robert", 2),
("Xavier", "Lemoine", 2),
("Geoffrey", "Dumas", 2),
("Olivier", "Dufresne", 2),
("Hélène", "Charpentier", 2),
("Marcel", "Dupuis", 2),
("Benoît", "Durand", 2),
("Léo", "Martin", 3),
("Arthur", "Dupont", 3),
("Thomas", "Lefevre", 3),
("Julien", "Moreau", 3),
("Maxime", "Petit", 3),
("Vincent", "Robert", 3),
("Lucas", "Bernard", 3),
("Antoine", "Durand", 3),
("Pierre", "Lefevre", 3),
("Michel", "Caron", 3),
("Claire", "Lefevre", 3),
("Emilie", "Dubois", 3),
("François", "Martin", 3),
("Éric", "Lambert", 3),
("Marc", "Boucher", 3),
("Henri", "Lefevre", 3),
("Sophie", "Lefevre", 3),
("Julien", "Laurent", 3),
("Nathalie", "Robert", 3),
("Xavier", "Lemoine", 3),
("Geoffrey", "Dumas", 3),
("Olivier", "Dufresne", 3),
("Hélène", "Charpentier", 3),
("Marcel", "Dupuis", 3),
("Benoît", "Durand", 3);

-- Structure de la table "abscences"
CREATE TABLE abscences (
    idA INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    dateA DATE NOT NULL,
    idE INT UNSIGNED NOT NULL,
    FOREIGN KEY (idE) REFERENCES eleves(idE) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Structure de la table "Notes"
CREATE TABLE notes (
    idN INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    valeurN INT NOT NULL,
    idE INT UNSIGNED NOT NULL,
    FOREIGN KEY (idE) REFERENCES eleves(idE) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
