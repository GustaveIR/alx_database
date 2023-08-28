-- Script to print the full description of the table first_table
SELECT CONCAT(
    'Table   Create Table\n',
    TABLE_NAME, ' ',
    CREATE_TABLE
) AS Table_Description
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA = 'hbtn_0c_0' AND TABLE_NAME = 'first_table';

