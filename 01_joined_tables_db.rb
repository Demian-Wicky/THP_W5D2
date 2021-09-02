CREATE TABLE `cities` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT,
  `name` TEXT
);
INSERT INTO cities (name) VALUES ('Paris');
INSERT INTO cities (name) VALUES ('London');
INSERT INTO cities (name) VALUES ('Washington D.C.');
INSERT INTO cities (name) VALUES ('Rome');



CREATE TABLE `inhabitants` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT,
  `city_id` INTEGER,
  `first_name` TEXT,
  `last_name` TEXT,
  `age` TEXT
);

INSERT INTO inhabitants (city_id, first_name, last_name, age) VALUES (3, 'Donald', 'Trump', 71);
INSERT INTO inhabitants (city_id, first_name, last_name, age) VALUES (4, 'Matteo', 'Renzi', 43);
INSERT INTO inhabitants (city_id, first_name, last_name, age) VALUES (1, 'Emmanuel', 'Macron', 40);
INSERT INTO inhabitants (city_id, first_name, last_name, age) VALUES (2, 'Theresa', 'May', 61);