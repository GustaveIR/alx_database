-- Create table force_name on MySQL server if it doesn't exist
CREATE TABLE IF NOT EXISTS force_name (
    id INT,
    name VARCHAR(256) NOT NULL
);

-- Insert data into force_name table
INSERT INTO force_name (id, name) VALUES (1, 'Holberton School');
INSERT INTO force_name (id, name) VALUES (1, 'Python is cool');
INSERT INTO force_name (id, name) VALUES (2, 'Holberton');
INSERT INTO force_name (id, name) VALUES (3, 'School');
INSERT INTO force_name (id, name) VALUES (4, 'C is fun');
