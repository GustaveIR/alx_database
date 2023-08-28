SELECT
    CONCAT(
        TABLE_NAME, 'CREATE TABLE `', TABLE_NAME, '` (\n',
        GROUP_CONCAT(
            '  `', COLUMN_NAME, '` ', COLUMN_TYPE,
            IF(IS_NULLABLE = 'NO', ' NOT NULL', ''),
            IF(EXTRA = 'auto_increment', ' AUTO_INCREMENT', ''),
            IF(COLUMN_DEFAULT IS NOT NULL, CONCAT(' DEFAULT ', COLUMN_DEFAULT), ''),
            ',\n'
            ORDER BY ORDINAL_POSITION
            SEPARATOR ''
        ),
        '  PRIMARY KEY (`id`)\n',
        ') ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci'
    ) AS Table_Description
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'hbtn_0c_0' AND TABLE_NAME = 'first_table'
GROUP BY TABLE_NAME;
