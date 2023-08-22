-- 5-full_table.sql

-- This script prints the full description of the first_table
-- in the hbtn_0c_0 database.

-- Connect to the hbtn_0c_0 database
USE hbtn_0c_0;

-- Use SHOW COLUMNS statement to get the table structure
SELECT
    'Table   Create Table' AS 'Table   Create Table'
UNION ALL
SELECT
    TABLE_NAME AS 'Table',
    CONCAT('CREATE TABLE `', TABLE_NAME, '` (') AS 'Create Table'
FROM
    INFORMATION_SCHEMA.TABLES
WHERE
    TABLE_SCHEMA = 'hbtn_0c_0'
    AND TABLE_NAME = 'first_table'
UNION ALL
SELECT
    CONCAT('`', COLUMN_NAME, '`', ' ', COLUMN_TYPE, ' ',
           CASE WHEN IS_NULLABLE = 'NO' THEN 'NOT NULL' ELSE 'DEFAULT NULL' END, ' ',
           CASE WHEN COLUMN_DEFAULT IS NOT NULL THEN CONCAT('DEFAULT ', COLUMN_DEFAULT) ELSE '' END, ',') AS 'Create Table'
FROM
    INFORMATION_SCHEMA.COLUMNS
WHERE
    TABLE_SCHEMA = 'hbtn_0c_0'
    AND TABLE_NAME = 'first_table'
ORDER BY
    TABLE_NAME, ORDINAL_POSITION
UNION ALL
SELECT
    CONCAT('PRIMARY KEY (', GROUP_CONCAT('`', COLUMN_NAME, '`'), ')', ',') AS 'Create Table'
FROM
    INFORMATION_SCHEMA.KEY_COLUMN_USAGE
WHERE
    TABLE_SCHEMA = 'hbtn_0c_0'
    AND TABLE_NAME = 'first_table'
    AND CONSTRAINT_NAME = 'PRIMARY'
UNION ALL
SELECT
    CONCAT(') ENGINE=', ENGINE, ' DEFAULT CHARSET=', CHARACTER_SET_NAME) AS 'Create Table'
FROM
    INFORMATION_SCHEMA.TABLES
WHERE
    TABLE_SCHEMA = 'hbtn_0c_0'
    AND TABLE_NAME = 'first_table';
