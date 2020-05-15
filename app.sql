-- Create a table, `owners`
CREATE TABLE owners (
    id INTEGER PRIMARY KEY,
    owner_name TEXT
);
-- Create a related table, `bicycles`
CREATE TABLE bicycles (
    id INTEGER PRIMARY KEY,
    bicycle_name TEXT,
    owners_id INTEGER,
    FOREIGN KEY (owners_id) REFERENCES owners(id)
);
-- Create 3 bicycles and 2 owners 
INSERT INTO owners (owner_name) 
VALUES ('Steve'), ('Harold');
INSERT INTO bicycles (bicycle_name, owners_id)
VALUES ('Mr. Bike', 1), ('Bike Tyson', 2), ('Bill the Bike', 1);
-- Update the properties of one of the bicycles
UPDATE bicycles
SET bicycle_name = ('Bob the Bike') WHERE bicycle_name = 'Bill the Bike';
-- List all the bicycles
SELECT bicycle_name FROM bicycles;
-- List all the bicycles with their owners
SELECT bicycles.bicycle_name, owners.owner_name 
FROM bicycles 
INNER JOIN owners
ON bicycles.owners_id = owners.id;
-- Delete one of the bicycles
DELETE FROM bicycles WHERE bicycle_name = 'Mr. Bike';