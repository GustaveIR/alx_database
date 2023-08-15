-- Create a temporary table to store the CREATE TABLE statement
CREATE TEMPORARY TABLE IF NOT EXISTS tmp_create_table AS
    SELECT create_statement
    FROM information_schema.tables
    WHERE table_schema = 'hbtn_test_db_5'
      AND table_name = 'first_table';

-- Retrieve and format the CREATE TABLE statement
SELECT
    SUBSTRING_INDEX(SUBSTRING_INDEX(create_statement, '(', 2), ')', -1) AS formatted_create_statement
FROM tmp_create_table;
