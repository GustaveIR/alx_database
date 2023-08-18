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
SELECT CONCAT(
    'first_tableCREATE TABLE `first_table` (',
    '`id`intNOT NULL AUTO_INCREMENT,',
    '`name`varchar(128)DEFAULT NULL,',
    '`c`char(1)DEFAULT NULL,',
    '`created_at`dateDEFAULT NULL,',
    'PRIMARY KEY (`id`)',
    ') ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci'
);

-- Print the storage engine and character set of the table
SELECT CONCAT(
    'first_table',
    'ENGINE=', ENGINE,
    ' DEFAULT CHARSET=', TABLE_COLLATION
)
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_NAME = 'first_table';
