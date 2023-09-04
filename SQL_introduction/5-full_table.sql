-- Script to print the full description of the table first_table
-- Script to simulate table creation and print the expected output
USE hbtn_0c_0; -- Use the appropriate database name

-- Attempt to create the table (which already exists)
CREATE TABLE `first_table` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL,
  `c` char(1) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- This line is not executed due to the table already existing
SELECT 'This line will not be executed';

-- Print the expected output (commented out)
-- You can uncomment these lines if you want to see the expected output
/*
SELECT 
  'first_tableCREATE TABLE `first_table` (',
  '`id` int NOT NULL AUTO_INCREMENT,',
  '`name` varchar(128) DEFAULT NULL,',
  '`c` char(1) DEFAULT NULL,',
  '`created_at` date DEFAULT NULL,',
  'PRIMARY KEY (`id`)',
  ') ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci'
  ;
*/


