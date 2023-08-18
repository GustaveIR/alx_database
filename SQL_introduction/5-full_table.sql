-- Create database and table
DROP DATABASE IF EXISTS hbtn_test_db_5;
CREATE DATABASE IF NOT EXISTS hbtn_test_db_5;
USE hbtn_test_db_5;
CREATE TABLE IF NOT EXISTS first_table (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(128),
    c CHAR(1),
    created_at DATE,
    PRIMARY KEY (id)
);

-- Print the full description of the table
SELECT CONCAT('Table: ', TABLE_NAME) AS 'Table',
       GROUP_CONCAT(CONCAT(COLUMN_NAME, ' ', COLUMN_TYPE, ' ', IF(IS_NULLABLE = 'NO', 'NOT NULL', ''), ' ', IF(EXTRA = 'auto_increment', 'AUTO_INCREMENT', '')) SEPARATOR ',\n') AS 'Create Table'
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'first_table';

-- Print the storage engine and character set of the table
SELECT CONCAT('Table: ', TABLE_NAME) AS 'Table',
       CONCAT('ENGINE=', ENGINE, ' DEFAULT CHARSET=', TABLE_COLLATION) AS 'Create Table'
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_NAME = 'first_table';
