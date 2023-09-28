-- creates databases hbtn_0d_usa & table cities on my MySQL server.

CREATE DATABASE IF NOT EXISTS hbtn_0d_usa;
USE hbtn_0d_usa;

-- Create the cities table if it doesn't exist
CREATE TABLE IF NOT EXISTS cities (
    id INT AUTO_INCREMENT PRIMARY KEY,
    state_id INT NOT NULL,
    name VARCHAR(256) NOT NULL,
    FOREIGN KEY (state_id) REFERENCES states(id)
);

-- Insert data into the cities table
INSERT INTO cities (state_id, name) VALUES (1, "San Francisco");

-- Select data from the cities table
SELECT * FROM cities;
