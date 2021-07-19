-- Création de la table User --
CREATE TABLE user ( 
 id INT UNSIGNED NOT NULL AUTO_INCREMENT ,
 `email` VARCHAR(190),
 `roles` TEXT,
 `password` VARCHAR(190) 
 PRIMARY KEY (id)) ENGINE = InnoDB;
 
 -- Creation de la table livre --
 
CREATE TABLE livre ( 
 id INT UNSIGNED NOT NULL AUTO_INCREMENT ,
 `titre` VARCHAR(190),
 `annee_edition` INT NULL,
 `nombre_pages` INT,
 `code_isbn` VARCHAR(190) NULL,
 `auteur_id` INT UNSIGNED NOT NULL,
 PRIMARY KEY (id)) ENGINE = InnoDB;

 -- Création de clé étrangère entre livre & auteur --
ALTER TABLE `livre` ADD CONSTRAINT `fk_auteur_livre_id` 
FOREIGN KEY (`auteur_id`) REFERENCES `auteur`(`id`) 
ON DELETE RESTRICT ON UPDATE RESTRICT;

--Création de la table de jointures livre_genre --
CREATE TABLE livre_genre(
`livre_id` INT UNSIGNED NOT NULL,
`genre_id`  INT UNSIGNED NOT NULL,
FOREIGN KEY (`livre_id`) REFERENCES `livre`(`id`),
FOREIGN KEY (`genre_id`) REFERENCES `genre`(`id`),
) ENGINE= InnoDB;

-- Creation de la table auteur --
CREATE TABLE auteur ( 
 id INT UNSIGNED NOT NULL AUTO_INCREMENT ,
 `nom` VARCHAR(190),
 `prenom` VARCHAR(190)
 PRIMARY KEY (id)) ENGINE = InnoDB; 
 
  -- Creation de la table genre --

CREATE TABLE genre ( 
 id INT UNSIGNED NOT NULL AUTO_INCREMENT ,
 `nom` VARCHAR(190),
 `description` TEXT NULL
 PRIMARY KEY (id)) ENGINE = InnoDB;  
 
  -- Creation de la table emprunteur -- 
 
CREATE TABLE emprunteur ( 
 id INT UNSIGNED NOT NULL AUTO_INCREMENT ,
 `nom` VARCHAR(190),
 `prenom` VARCHAR(190),
 `tel` VARCHAR(190),
 `actif` BOOLEAN,
 `date_creation` TIMESTAMP CURRENT_TIMESTAMP,
 `date_modification` TIMESTAMP NULL,
 `user_id` INT UNSIGNED NOT NULL,
 PRIMARY KEY (id)) ENGINE = InnoDB; 
 
-- Creation de la clé étrangére entre enprumteur & user --
ALTER TABLE `emprunteur` ADD CONSTRAINT `fk_user_emprunteur_id` 
FOREIGN KEY (`user_id`) REFERENCES `user`(`id`) 
ON DELETE RESTRICT ON UPDATE RESTRICT;


  -- Creation de la table emprunt -- 

 CREATE TABLE emprunt ( 
 id INT UNSIGNED NOT NULL AUTO_INCREMENT ,
`date_emprunt` TIMESTAMP,
`date_retour` TIMESTAMP NULL,
`emprunteur_id` INT UNSIGNED NOT NULL,
`livre_id` INT UNSIGNED NOT NULL,
 PRIMARY KEY (id)) ENGINE = InnoDB;  

-- Creation de la clé étrangére entre emprunt & emprunteur  --

ALTER TABLE `emprunt` ADD CONSTRAINT `fk_emprunteur_emprunt_id` 
FOREIGN KEY (`emprunteur_id`) REFERENCES `emprunteur`(`id`) 
ON DELETE RESTRICT ON UPDATE RESTRICT;

-- Creation de la clé étrangére entre emprunt & livre  --

ALTER TABLE `emprunt` ADD CONSTRAINT `fk_livre_emprunt_id` 
FOREIGN KEY (`livre_id`) REFERENCES `livre`(`id`) 
ON DELETE RESTRICT ON UPDATE RESTRICT;