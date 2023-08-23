-- Full description
-- Write a script that prints the full description of the table first_table from the database hbtn_0c_5 in your MySQL server.
-- The database name will be passed as an argument of the mysql command
-- You are not allowed to use the DESCRIBE or EXPLAIN statements

-- Script to print the full description of the table first_table
SELECT CONCAT(
    TABLE_NAME, 'CREATE TABLE `', TABLE_NAME, '` (',
    GROUP_CONCAT(
        COLUMN_NAME,
        ' ', COLUMN_TYPE,
        IF(IS_NULLABLE = 'NO', ' NOT NULL', ''),
        IF(COLUMN_DEFAULT IS NOT NULL, CONCAT(' DEFAULT ', QUOTE(COLUMN_DEFAULT)), ''),
        IF(COLUMN_KEY = 'PRI', ' PRIMARY KEY', ''),
        IF(EXTRA = 'auto_increment', ' AUTO_INCREMENT', '')
        SEPARATOR ',\n'
    ),
    ') ENGINE=', ENGINE, ' DEFAULT CHARSET=', CHARACTER_SET_NAME, ' COLLATE=', COLLATION_NAME
) AS Table_Description
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA = 'hbtn_0c_5' AND TABLE_NAME = 'first_table';
