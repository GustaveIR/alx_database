-- Store the CREATE TABLE statement in a variable
SET @create_statement = (
    SELECT CONCAT(
        'first_table\n',
        'CREATETABLE `first_table` (\n',
        GROUP_CONCAT(
            '  `', column_name, '` ', column_type,
            IF(is_nullable = 'NO', 'NOTNULL', 'DEFAULTNULL'),
            IF(column_default IS NOT NULL AND column_key <> 'PRI', CONCAT(' DEFAULT ', IF(column_default = '', 'NULL', column_default)), ''),
            IF(column_key = 'PRI', ' AUTO_INCREMENT', ''),
            ','
        ),
        '\nPRIMARY KEY (`id`)\n',
        ') ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;'
    )
    FROM information_schema.columns
    WHERE table_schema = 'hbtn_test_db_5'
      AND table_name = 'first_table'
);

-- Print the formatted CREATE TABLE statement
SELECT REPLACE(@create_statement, ",`", "`") AS formatted_create_statement;
