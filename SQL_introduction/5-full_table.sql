SET @db_name = 'hbtn_0c_0';
SET @table_name = 'first_table';

-- Get the column information
SET @column_info = (
    SELECT GROUP_CONCAT(
        '`', column_name, '` ', column_type,
        IF(is_nullable = 'NO', ' NOT NULL', ' DEFAULT NULL'),
        IF(column_default IS NOT NULL AND column_key <> 'PRI', CONCAT(' DEFAULT ', IF(column_default = '', 'NULL', column_default)), ''),
        IF(column_key = 'PRI', ' AUTO_INCREMENT', '')
    )
    FROM information_schema.columns
    WHERE table_schema = @db_name
      AND table_name = @table_name
);

-- Construct the CREATE TABLE statement
SET @create_statement = CONCAT(
    @table_name, ' CREATE TABLE `', @table_name, '` (',
    @column_info,
    ', PRIMARY KEY (`id`)',
    ') ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;'
);

-- Print the formatted CREATE TABLE statement
SELECT @create_statement;
