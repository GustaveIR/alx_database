-- Create the database if it doesn't exist
CREATE DATABASE IF NOT EXISTS hbtn_0c_0;

-- Switch to the newly created database
USE hbtn_0c_0;

-- Create the table 'first_table'
CREATE TABLE IF NOT EXISTS first_table (
    `id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(128) DEFAULT NULL,
    `c` CHAR(1) DEFAULT NULL,
    `created_at` DATE DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Display the CREATE TABLE statement for 'first_table'
-- Store the CREATE TABLE statement in a variable
SET @create_statement = (
    SELECT CONCAT(
        'Table   Create Table\n',
        'first_table CREATE TABLE `first_table` (\n',
        GROUP_CONCAT(
            '  `', column_name, '` ', column_type,
            IF(is_nullable = 'NO', ' NOT NULL', ' DEFAULT NULL'),
            IF(column_key = 'PRI', ' AUTO_INCREMENT', ''),
            IF(column_default IS NOT NULL AND column_key <> 'PRI', CONCAT(' DEFAULT ', IF(column_default = '', 'NULL', column_default)), ''),
            ',\n'
        ),
        'PRIMARY KEY (`id`)\n',
        ') ENGINE=InnoDB DEFAULT CHARSET=latin1;'
    )
    FROM information_schema.columns
    WHERE table_schema = 'hbtn_0c_0'
      AND table_name = 'first_table'
    GROUP BY table_name
);

-- Print the formatted CREATE TABLE statement
SELECT REPLACE(@create_statement, ',`', '`') AS formatted_create_statement;
