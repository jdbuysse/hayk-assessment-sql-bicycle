CREATE TABLE cats (
    id INTEGER PRIMARY KEY,
    name TEXT,
    age INTEGER,
    breed TEXT
);

INSERT INTO cats (name, age, breed) VALUES ("Maru", 3, "Scottish Fold");
INSERT INTO cats (name, age, breed) VALUES ("Hana", 1, "Tabby");

CREATE TABLE owners (
    id INTEGER PRIMARY KEY,
    name TEXT
);

ALTER TABLE cats ADD COLUMN owner_id INTEGER;

INSERT INTO owners (name) VALUES ("muhumogu");

UPDATE cats SET owner_id = 1 WHERE name = "Maru";
UPDATE cats SET owner_id = 1 WHERE name = "Hana";
