--creates databases hbtn_0d_usa & table states on my MySQL server.


CREATE DATABASE IF NOT EXISTS hbtn_0d_usa;
CREATE TABLE IF NOT EXISTS hbtn_0d_usa.states (
       id INT UNIQUE NOT NULL AUTO_INCREMENT PRIMARY KEY,
       name VARCHAR(256) NOT NULL
);

-- Regular inserts + select
INSERT INTO states (id, name) VALUES (1, "California");
INSERT INTO states (id, name) VALUES (2, "Arizona");
INSERT INTO states (name) VALUES ("Nevada");
INSERT INTO states (name) VALUES ("Illinois");
INSERT INTO states (id, name) VALUES (10, "New York");
INSERT INTO states (name) VALUES ("Louisiana");

SELECT * FROM states ORDER BY id ASC;