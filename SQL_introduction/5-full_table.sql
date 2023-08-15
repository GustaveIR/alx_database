-- Store the CREATE TABLE statement in a variable
SET @create_statement = (
    SELECT CONCAT(
        'CREATE TABLE `', table_name, '` (\n',
        GROUP_CONCAT(
            '  `', column_name, '` ', column_type,
            IF(column_default IS NOT NULL, CONCAT(' DEFAULT ', column_default), ''),
            IF(is_nullable = 'NO', ' NOT NULL', ''),
            IF(column_key = 'PRI', ' PRIMARY KEY', ''),
            IF(extra = 'auto_increment', ' AUTO_INCREMENT', '')
            SEPARATOR ',\n'
        ),
        '\n) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;'
    )
    FROM information_schema.columns
    WHERE table_schema = 'hbtn_0c_0'
      AND table_name = 'first_table'
);

-- Print the formatted CREATE TABLE statement
SELECT @create_statement AS formatted_create_statement;
