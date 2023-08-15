-- Store the CREATE TABLE statement in a variable
SET @create_statement = (
    SELECT create_statement
    FROM information_schema.tables
    WHERE table_schema = 'hbtn_0c_0'
      AND table_name = 'first_table'
);

-- Retrieve column definitions and format the output
SELECT 
    CONCAT(table_name, 'CREATE TABLE', create_statement) AS formatted_create_statement
FROM information_schema.tables
WHERE table_schema = 'hbtn_0c_0'
  AND table_name = 'first_table';
