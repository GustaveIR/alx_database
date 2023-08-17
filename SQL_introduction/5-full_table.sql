-- Set the database and table names
SET @db_name = 'hbtn_test_db_5';
SET @table_name = 'first_table';

-- Store the CREATE TABLE statement in a variable
SET @create_statement = (
    SELECT CONCAT(
        @table_name, ' CREATE TABLE `', @table_name, '` (',
        GROUP_CONCAT(
            '\n`', column_name, '` ', column_type,
            IF(is_nullable = 'NO', ' NOT NULL', ' DEFAULT NULL'),
            IF(column_key = 'PRI', ' AUTO_INCREMENT', ''),
            IF(column_default IS NOT NULL AND column_key <> 'PRI', CONCAT(' DEFAULT ', IF(column_default = '', 'NULL', column_default)), ''),
            ','
        ),
        '\nPRIMARY KEY (`id`)',
        '\n) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;'
    )
    FROM information_schema.columns
    WHERE table_schema = @db_name
      AND table_name = @table_name
    GROUP BY table_name
);

-- Print the formatted CREATE TABLE statement
SELECT @create_statement;
