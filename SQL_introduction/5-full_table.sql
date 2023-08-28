-- Script to print the full description of the table first_table
SELECT CONCAT(
    able: t
Create Table: CREATE TABLE `t` (
  `id` int NOT NULL AUTO_INCREMENT,
  `s` char(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
) AS Table_Description
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'hbtn_0c_0' AND TABLE_NAME = 'first_table'
GROUP BY TABLE_NAME, CHARACTER_SET_NAME, COLLATION_NAME;
