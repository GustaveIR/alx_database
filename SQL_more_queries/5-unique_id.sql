-- New database hbtn_test_db_5
DROP DATABASE IF EXISTS hbtn_test_db_5;
CREATE DATABASE IF NOT EXISTS hbtn_test_db_5;

USE hbtn_test_db_5;

-- Creates table UNIQUE_ID on MySQL server.
CREATE TABLE IF NOT EXISTS UNIQUE_ID (
    id INT DEFAULT 1, 
    name VARCHAR(256),
    UNIQUE (id)
);

-- Regular inserts + select
INSERT INTO unique_id (id, name) VALUES (1, "Holberton School");
INSERT INTO unique_id (id, name) VALUES (2, "Holberton");
INSERT INTO unique_id (id, name) VALUES (3, "School");
INSERT INTO unique_id (id, name) VALUES (4, "C is fun");
INSERT INTO unique_id (id, name) VALUES (5, "Python is cool");

SELECT * FROM unique_id ORDER BY id, name ASC;
