-- Create table force_name on MySQL server if it doesn't exist
CREATE TABLE IF NOT EXISTS force_name (
    id INT PRIMARY KEY,
    name VARCHAR(256) NOT NULL
);

-- Insert data into force_name table
INSERT INTO force_name (id, name) VALUES (1, 'Holberton School');
INSERT INTO force_name (id, name) VALUES (2, 'Python is cool');
INSERT INTO force_name (id, name) VALUES (3, 'Holberton');
INSERT INTO force_name (id, name) VALUES (4, 'School');
INSERT INTO force_name (id, name) VALUES (5, 'C is fun');
