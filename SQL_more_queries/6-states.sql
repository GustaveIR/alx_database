--creates databases hbtn_0d_usa & table states on my MySQL server.
CREATE DATABASE IF NOT EXISTS hbtn_0d_usa
CREATE TABLE IF NOT EXISTS hbtn_0d_usa.states (
    id INT AUTO_INCREMENT UNIQUE NOT NULL PRIMARY KEY,
    name VARCHAR(256) NOT NULL
);