-- Create table second_table if it doesn't exist
CREATE TABLE IF NOT EXISTS `second_table` (
    `id` INT,
    `name` VARCHAR(256),
    `score` INT
);

-- Check if the table already exists by counting the rows in it
SET @table_exists = (SELECT COUNT(*) FROM `second_table`);

-- If the table doesn't exist, insert the records
IF @table_exists = 0 THEN
    INSERT INTO `second_table` (`id`, `name`, `score`) VALUES
        (1, 'John', 10),
        (2, 'Alex', 3),
        (3, 'Bob', 14),
        (4, 'George', 8);
END IF;

-- Display the records from the table
SELECT `id`, `name`, `score` FROM `second_table`;
