-- Set the database and table names
SET @db_name = 'hbtn_0c_0';
SET @table_name = 'first_table';

-- Store the CREATE TABLE statement in a variable
SET @create_statement = (
    SELECT CONCAT(
        @table_name, 'CREATETABLE`', @table_name, '` (',
        GROUP_CONCAT(
            '`', column_name, '`', column_type,
            IF(is_nullable = 'NO', 'NOTNULL', 'DEFAULTNULL'),
            IF(column_key = 'PRI', 'AUTO_INCREMENT', ''),
            IF(column_default IS NOT NULL AND column_key <> 'PRI', CONCAT('DEFAULT', IF(column_default = '', 'NULL', column_default)), ''),
            IF(extra = 'auto_increment', '', ','),
            '\n'
        ),
        'PRIMARYKEY(`id`)',
        ')ENGINE=InnoDBDEFAULTCHARSET=utf8mb4COLLATE=utf8mb4_0900_ai_ci;'
    )
    FROM information_schema.columns
    WHERE table_schema = @db_name
      AND table_name = @table_name
    GROUP BY table_name
);

-- Print the formatted CREATE TABLE statement
SELECT @create_statement;
