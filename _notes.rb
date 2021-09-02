===============
== LES BASES ==
===============

$ brew install sqlite "pour installer sqlite"
$ sqlite3 db.sqlite "pour créer une base de donnnée sqlite"

=======================================================================================================================
CREATE TABLE `doctors` (
`id` INTEGER PRIMARY KEY AUTOINCREMENT, 
`name` TEXT,
`age` INTEGER,
`specialty` TEXT
);

"Cette commande va créer une table doctors, avec son fameux id et les valeurs name (un nom sous forme de texte),
age (un âge sous forme d'entier) et specialty (une spécialité sous forme de texte).
Avec la commande AUTOINCREMENT, on laisse la base de données s'occuper de l'incrémentation
automatique de l'id : à chaque fois qu'une entrée sera créée dans la table doctors,
elle portera un nouvel id (égal au dernier id + 1)."

=======================================================================================================================
"Les commandes suivantes permettront de visualiser plus facilement le contenu de ta table
quand tu taperas la commande SELECT * FROM doctors. Saisis-les une fois dans l'interface de SQlite3 :"
$ .mode column
$ .headers on

"La commande suivante permet de lister toutes les tables qui ont déjà été créées dans ton fichier de base de données."
$ .tables

"Une dernière astuce pour afficher simplement toutes les colonnes d'une table donnée.
Il faut que tu ais activé le mode .headers on. Ensuite fais :"
SELECT * FROM TableName LIMIT 1;
"Cela affichera la première ligne du tableau et donc l'ensemble du header au-dessus."

=======================================================================================================================
$ ctrl-D "pour quitter"


========================
== LES TABLES JOINTES ==
========================

"La table cities:"

id	name
1	  Paris
2	  London
3	  Washington D.C.
4	  Rome

"Et la table inhabitants:"

id	city_id  first_name   last_name   age
1   3        Donald       Trump       71
2   4        Matteo       Renzi       43
3   1        Emmanuel     Macron      40
4   2        Theresa      May         61

"On peut voir immédiatement que ces deux tables sont liées puisque dans la table inhabitants, j'ai deux clés uniques :"
"La clé id, aussi appelée clé primaire ou primary key."
"La clé city_id, aussi appelée clé étrangère ou foreign key."

=======================================================================================================================
SELECT * FROM inhabitants
JOIN cities ON cities.id = inhabitants.city_id
WHERE cities.name = 'Paris';

"Ici j'ai dit de joindre la table cities tel que l'id que je trouve dans la table cities (cities.id)
est le même que le city_id qui se trouve dans la table inhabitants (identifié par inhabitants.city_id)."


=======================
== POINTS IMPORTANTS ==
=======================

"Créer une table :"

CREATE TABLE `doctors` (
`id` INTEGER PRIMARY KEY AUTOINCREMENT,
`name` TEXT,
`age` INTEGER,
`specialty` TEXT
);
=======================================================================================================================
"Créer une entrée dans une table :"

INSERT INTO doctors (name, age, specialty) VALUES ('Dr. Dolladille', 45, 'Dentist');

=======================================================================================================================
"Lire des éléments (avec ou sans critère de sélection) :"

SELECT * FROM doctors;
SELECT * FROM doctors WHERE age = 45;

=======================================================================================================================
"Mettre à jour une entrée :"

UPDATE doctors SET age = 40, name = 'John Smith' WHERE id = 3;

=======================================================================================================================
"Supprimer une entrée :"
DELETE FROM doctors WHERE id= 3;

=======================================================================================================================
"Lire les éléments d'une table selon un critère d'une table liée :"

SELECT * FROM inhabitants
JOIN cities ON cities.id = inhabitants.city_id
WHERE cities.name = 'Paris';