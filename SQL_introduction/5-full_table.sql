-- Store the CREATE TABLE statement in a temporary table
CREATE TEMPORARY TABLE IF NOT EXISTS tmp_create_table AS
    SELECT create_statement
    FROM information_schema.tables
    WHERE table_schema = 'hbtn_0c_0'
      AND table_name = 'first_table';

-- Retrieve column definitions
SELECT 
    REPLACE(
        REPLACE(
            REPLACE(
                REPLACE(create_statement, '`', ''),
                '\n', ''),
            '  ', ' '),
        ',', ',\n') AS create_statement
FROM tmp_create_table;
