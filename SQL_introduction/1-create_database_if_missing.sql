-- Check if the database already exists
SET @db_exists = (SELECT COUNT(*) FROM information_schema.schemata WHERE schema_name = 'hbtn_0c_0');

-- Create the database if it doesn't exist
IF @db_exists = 0 THEN
    CREATE DATABASE hbtn_0c_0;
    SELECT 'Database created: hbtn_0c_0' AS Message;
ELSE
    SELECT 'Database already exists: hbtn_0c_0' AS Message;
END IF;
