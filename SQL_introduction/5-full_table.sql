-- Create database and table

-- Check if the database `hbtn_test_db_5` exists
CREATE DATABASE IF NOT EXISTS hbtn_test_db_5;

-- Use the database `hbtn_test_db_5`
USE hbtn_test_db_5;

-- Create the table `first_table`
CREATE TABLE first_table (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(128) NOT NULL,
  c CHAR(1) NOT NULL,
  created_at DATE NOT NULL,
  PRIMARY KEY (id)
);
