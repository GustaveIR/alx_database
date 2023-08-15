-- Store the CREATE TABLE statement in a variable
SET @create_statement = (
    SELECT create_statement
    FROM information_schema.tables
    WHERE table_schema = 'hbtn_0c_0'
      AND table_name = 'first_table'
);

-- Retrieve column definitions and format the output
SELECT GROUP_CONCAT(column_line SEPARATOR '\n') AS formatted_create_statement
FROM (
    SELECT
        CONCAT(
            REPLACE(column_name, '`', ''),
            ' ',
            column_type,
            IF(column_default IS NOT NULL, CONCAT(' DEFAULT ', column_default), ''),
            IF(is_nullable = 'NO', ' NOT NULL', ''),
            IF(column_key = 'PRI', ' PRIMARY KEY', ''),
            IF(extra = 'auto_increment', ' AUTO_INCREMENT', '')
        ) AS column_line
    FROM information_schema.columns
    WHERE table_schema = 'hbtn_0c_0'
      AND table_name = 'first_table'
) AS formatted_columns;
