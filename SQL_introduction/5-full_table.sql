-- Store the CREATE TABLE statement in a variable
SET @create_statement = (
    SELECT table_type, table_name, column_name, column_type, column_default, is_nullable, column_key, extra
    FROM information_schema.columns
    WHERE table_schema = 'hbtn_0c_0'
      AND table_name = 'first_table'
);

-- Print the formatted CREATE TABLE statement
SELECT CONCAT(
    @create_statement.table_type, ' ', @create_statement.table_name, '\nCREATE TABLE `', @create_statement.table_name, '` (\n',
    GROUP_CONCAT(
        '  `', @create_statement.column_name, '` ', @create_statement.column_type,
        IF(@create_statement.column_default IS NOT NULL, CONCAT(' DEFAULT ', @create_statement.column_default), ''),
        IF(@create_statement.is_nullable = 'NO', ' NOT NULL', ''),
        IF(@create_statement.column_key = 'PRI', ' PRIMARY KEY', ''),
        IF(@create_statement.extra = 'auto_increment', ' AUTO_INCREMENT', '')
        SEPARATOR ',\n'
    ),
    '\n) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;'
) AS formatted_create_statement;
