-- Create database and table

CREATE DATABASE hbtn_test_db_5;
USE hbtn_test_db_5;
CREATE TABLE IF NOT EXISTS first_table (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(128) DEFAULT NULL,
  c CHAR(1) DEFAULT NULL,
  created_at DATE DEFAULT NULL,
  PRIMARY KEY (id)
);
