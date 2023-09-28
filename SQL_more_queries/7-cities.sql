-- creates databases hbtn_0d_usa & table cities on my MySQL server.

-- Create the database if it doesn't exist
CREATE DATABASE IF NOT EXISTS hbtn_0d_usa;

-- Use the database
USE hbtn_0d_usa;

-- Create the cities table if it doesn't exist
CREATE TABLE IF NOT EXISTS cities (
    id INT AUTO_INCREMENT PRIMARY KEY,
    state_id INT NOT NULL,
    name VARCHAR(256) NOT NULL,
    FOREIGN KEY (state_id) REFERENCES states(id)
);

-- Attempt to insert valid data
INSERT INTO cities (state_id, name) VALUES (1, "San Francisco");

-- Attempt to insert invalid data (foreign key violation)
INSERT INTO cities (state_id, name) VALUES (10, "Paris");

-- Attempt to insert invalid data (missing state_id)
INSERT INTO cities (name) VALUES ("New York");

-- Attempt to insert invalid data (missing name)
INSERT INTO cities (state_id) VALUES (2);

-- Attempt to insert invalid data (both state_id and name missing)
INSERT INTO cities () VALUES ();

-- Display the content of the cities table
SELECT * FROM cities;
