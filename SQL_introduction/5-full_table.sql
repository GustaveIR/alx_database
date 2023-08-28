-- Script to print the full description of the table first_table
SSELECT
    GROUP_CONCAT(
        COLUMN_NAME, COLUMN_TYPE,
        IF(IS_NULLABLE = 'NO', 'NOTNULL', ''),
        IF(EXTRA = 'auto_increment', 'AUTO_INCREMENT', ''),
        IF(COLUMN_DEFAULT IS NOT NULL, CONCAT('DEFAULT', COLUMN_DEFAULT), ''),
        ','
        ORDER BY ORDINAL_POSITION
        SEPARATOR '\n'
    ) AS Table_Description
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'hbtn_0c_0' AND TABLE_NAME = 'first_table'
GROUP BY TABLE_NAME;

