-- Create database and table

CREATE DATABASE hbtn_test_db_5;
USE hbtn_test_db_5;
CREATE TABLE first_table (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(128) NOT NULL,
  c CHAR(1) NOT NULL,
  created_at DATE NOT NULL,
  PRIMARY KEY (id)
);
