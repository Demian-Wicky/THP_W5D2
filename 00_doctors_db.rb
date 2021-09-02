CREATE TABLE `doctors` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT, 
  `name` TEXT,
  `age` INTEGER,
  `specialty` TEXT
);

INSERT INTO doctors (name, age, specialty) VALUES ('Dr. Didier Raoult', 69, 'microbiologist');
INSERT INTO doctors (name, age, specialty) VALUES ('Dr. Louis Pasteur', 72, 'microbiologist';)
INSERT INTO doctors (name, age, specialty) VALUES ('Dr. René Laennec', 45, 'doctor');
INSERT INTO doctors (name, age, specialty) VALUES ('Dr. Ambroise Paré', 80, 'surgeon');