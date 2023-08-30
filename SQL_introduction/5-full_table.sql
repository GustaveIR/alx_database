-- Script to print the full description of the table first_table
USE hbtn_0c_0;

SELECT GROUP_CONCAT(COLUMN_NAME, ' ', COLUMN_TYPE, ' ', IFNULL(COLUMN_DEFAULT, 'NULL')) AS column_info
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'hbtn_0c_0'
  AND TABLE_NAME = 'first_table';


