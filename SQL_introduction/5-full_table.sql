-- 5-full_table.sql

-- This script prints the full description of the first_table
-- in the hbtn_test_db_5 database.

-- Use SHOW COLUMNS statement to get the table structure
SELECT
    CONCAT(
        'first_tableCREATETABLE`first_table`(',
        GROUP_CONCAT(
            '`', COLUMN_NAME, '`', COLUMN_TYPE,
            CASE WHEN IS_NULLABLE = 'NO' THEN 'NOTNULL' ELSE 'DEFAULTNULL' END,
            CASE WHEN COLUMN_DEFAULT IS NOT NULL THEN CONCAT('DEFAULT', COLUMN_DEFAULT) ELSE '' END,
            ','
            ORDER BY ORDINAL_POSITION
        ),
        'PRIMARYKEY(`id`)',
        ')ENGINE=InnoDBDEFAULTCHARSET=utf8mb4COLLATE=utf8mb4_0900_ai_ci'
    ) AS 'msg'
FROM
    INFORMATION_SCHEMA.COLUMNS
WHERE
    TABLE_SCHEMA = 'hbtn_test_db_5'
    AND TABLE_NAME = 'first_table';
