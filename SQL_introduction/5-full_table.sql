-- Create database and table
DROP DATABASE IF EXISTS hbtn_test_db_5;
CREATE DATABASE IF NOT EXISTS hbtn_test_db_5;
USE hbtn_test_db_5;

-- Create first_table
CREATE TABLE IF NOT EXISTS first_table (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(128) DEFAULT NULL,
    c CHAR(1) DEFAULT NULL,
    created_at DATE DEFAULT NULL,
    PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
