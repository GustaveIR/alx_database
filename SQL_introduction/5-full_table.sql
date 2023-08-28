SELECT CONCAT(
    'Table   Create Table\n',
    TABLE_NAME, ' ',
    CREATE_TABLE_STMT
) AS Table_Description
FROM (
    SELECT
        TABLE_NAME,
        CONCAT(
            'CREATE TABLE `', TABLE_NAME, '` (\n',
            GROUP_CONCAT(
                '  `', COLUMN_NAME, '` ',
                COLUMN_TYPE,
                IF(IS_NULLABLE = 'NO', ' NOT NULL', ''),
                IF(COLUMN_DEFAULT IS NOT NULL, CONCAT(' DEFAULT ', COLUMN_DEFAULT), ''),
                IF(EXTRA = 'auto_increment', ' AUTO_INCREMENT', ''),
                '\n'
                ORDER BY ORDINAL_POSITION
                SEPARATOR ''
            ),
            'PRIMARY KEY (`', GROUP_CONCAT(COLUMN_NAME ORDER BY ORDINAL_POSITION SEPARATOR '`, `'), '`)\n',
            ') ENGINE=', ENGINE, ' DEFAULT CHARSET=', TABLE_COLLATION
        ) AS CREATE_TABLE_STMT
    FROM INFORMATION_SCHEMA.COLUMNS
    WHERE TABLE_SCHEMA = 'hbtn_0c_0' AND TABLE_NAME = 'first_table'
    GROUP BY TABLE_NAME
) AS Table_Info;
