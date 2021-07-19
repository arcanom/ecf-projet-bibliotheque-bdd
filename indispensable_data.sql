-- Insertion des données indispensables--
INSERT INTO user (`email`,`roles`, `password`)
VALUES(`admin@example.com`,`["ROLE_ADMIN"]`, MD5(`123`)),
(`foo.foo@example.com`,`["ROLE_EMPRUNTEUR"]`,(MD5(`123`)),
(`bar.bar@example.com`,`["ROLE_EMPRUNTEUR"]`,(MD5(`123`)),
(`baz.baz@example.com`,`["ROLE_EMRUNTEUR"]`,(MD5(`123`));

 INSERT INTO livre (`titre`,`annee_edition`,`nombre_pages`,`code_isbn`,`auteur_id`) 
 VALUES (`Lorem ipsum dolor sit amet`,`2010`,`100`,`9785786930024`,`1`),
 (`Consectetur adipiscing elit`,`2011`,`150`,`9783817260935`,`2`),
 (`Mihi quidem Antiochum`,`2012`,`200`,`9782020493727`,`3`),
 (`Quem audis satis belle `,`2013`,`250`,`9794059561353`,`4`);

 INSERT INTO livre_genre(`livre_id`,`genre_id`)
 VALUES(`1`,`1`),
 (`2`,`2`),
 (`3`,`3`),
 (`4`,`4`);

 INSERT INTO auteur(`nom`,`prenom`)
 VALUES(`auteur inconnu`,` `),
 (`Cartier`,`Hugues`),
 (`Lambert`,`Armand`),
 (`Moitessier`,`Thomas`);

 INSERT INTO genre (`nom`)
 VALUES (`poésie`),
 (`nouvelle`),
 (`roman historique`),
 (`roman d'amour`),
 (`roman d'aventure`),
 (`science-fiction`),
 (`fantasy`),
 (`biographie`),
 (`conte`),
 (`témoignage`),
 (`théâtre`),
 (`essai`),
 (`journal intime`);

 INSERT INTO emprunteur (`nom`,`prenom`,`tel`,`actif`,`user_id`)
 VALUES (`foo`,`foo`,`12345679`, `true`,`2`),
 (`bar`,`bar`,`12345679`, `false`,`3`),
 (`baz`,`baz`,`12345679`, `true`,`4`);

 INSERT INTO emprunt(`date_emprunt`,`date_retour`, `emprunteur_id`,`livre_id`)
 VALUES(`2020-02-01 10:00:00`,`2020-03-01 10:00:00`,`1`,`1`),
 (`2020-03-01 10:00:00`,`2020-04-01 10:00:00`,`2`,`2`),
(`2020-04-01 10:00:00`, NULL ,`2`,`2`);