-- Use a default database to avoid "No database selected" error
USE mysql;

-- Create a stored procedure that attempts to create the database
DELIMITER //
CREATE PROCEDURE CreateDatabaseIfNotExists()
BEGIN
    DECLARE CONTINUE HANDLER FOR 1007 BEGIN END;
    CREATE DATABASE IF NOT EXISTS hbtn_0c_0;
END;
//
DELIMITER ;

-- Call the stored procedure
CALL CreateDatabaseIfNotExists();

-- Drop the stored procedure
DROP PROCEDURE IF EXISTS CreateDatabaseIfNotExists;
