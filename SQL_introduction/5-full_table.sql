-- Set the database and table names
SET @db_name = 'hbtn_0c_0';
SET @table_name = 'first_table';

-- Get the column information
SET @column_info = (
    SELECT GROUP_CONCAT(
        '\n`', column_name, '` ', column_type,
        IF(is_nullable = 'NO', ' NOT NULL', ' DEFAULT NULL'),
        IF(column_key = 'PRI', ' PRIMARY KEY', ''),
        IF(column_default IS NOT NULL AND column_key <> 'PRI', CONCAT(' DEFAULT ', IF(column_default = '', 'NULL', column_default)), '')
    )
    FROM information_schema.columns
    WHERE table_schema = @db_name
      AND table_name = @table_name
);

-- Construct the SELECT statement
SET @select_statement = CONCAT('SELECT', @column_info, '\nFROM ', @table_name, ';');

-- Execute the SELECT statement
PREPARE stmt FROM @select_statement;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;
