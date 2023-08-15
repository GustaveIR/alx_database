-- Store the CREATE TABLE statement in a variable
SET @create_statement = (
    SELECT create_statement
    FROM information_schema.tables
    WHERE table_schema = 'hbtn_0c_0'
      AND table_name = 'first_table'
);

-- Print the formatted CREATE TABLE statement
SELECT @create_statement AS formatted_create_statement;
