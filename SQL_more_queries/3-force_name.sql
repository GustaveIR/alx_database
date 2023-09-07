-- CREATE TABLE and INSERTs should be in uppercase
-- create table force_name on MySQL server
CREATE TABLE IF NOT EXISTS force_name (
    id INT PRIMARY KEY AUTO_INCREMENT,  -- Set id as the primary key and auto-incremented
    name VARCHAR(256) NOT NULL
);

-- Inserting data into force_name
INSERT INTO force_name (name) VALUES ('Holberton School');
INSERT INTO force_name (name) VALUES ('Python is cool');
INSERT INTO force_name (name) VALUES ('Holberton');
INSERT INTO force_name (name) VALUES ('School');
INSERT INTO force_name (name) VALUES ('C is fun');
