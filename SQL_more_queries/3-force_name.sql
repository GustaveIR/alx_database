-- create table force_name on MySQL server
CREATE TABLE IF NOT EXISTS force_name (
    id INT,
    name VARCHAR(256) NOT NULL
);
-- Inserting data into force_name
INSERT INTO force_name (id, name) VALUES (1, 'Holberton School');
INSERT INTO force_name (id, name) VALUES (2, 'Python is cool');
INSERT INTO force_name (id, name) VALUES (3, 'Holberton');
INSERT INTO force_name (id, name) VALUES (4, 'School');
INSERT INTO force_name (id, name) VALUES (5, 'C is fun');