-- Store the CREATE TABLE statement in a variable
SET @create_statement = (
    SELECT CONCAT(
        table_name, '\n',
        'CREATE TABLE `', table_name, '` (\n',
        GROUP_CONCAT(
            '  `', column_name, '` ', column_type,
            IF(is_nullable = 'NO', 'NOT NULL', 'DEFAULT NULL'),
            IF(column_key = 'PRI', 'AUTO_INCREMENT', ''),
            IF(column_default IS NOT NULL AND column_key <> 'PRI', CONCAT('DEFAULT ', IF(column_default = '', 'NULL', column_default)), ''),
            IF(column_key = 'PRI', '', IF(is_nullable = 'NO', 'PRIMARY KEY', '')),
            SEPARATOR ',\n'
        ),
        '\n) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;'
    )
    FROM information_schema.columns
    WHERE table_schema = 'hbtn_0c_0'
      AND table_name = 'first_table'
);

-- Print the formatted CREATE TABLE statement
SELECT REPLACE(@create_statement, "CO'atline", "COLLATE") AS formatted_create_statement;
