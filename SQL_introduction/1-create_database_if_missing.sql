-- Attempt to create the database (will fail if it already exists)
CREATE DATABASE IF NOT EXISTS hbtn_0c_0;


-- Check if the database was created successfully
-- The error code for "database already exists" is 1007
-- We ignore this error using the IF statement
SET @error_code = (SELECT IF(COUNT(*) = 0, 0, 1) FROM mysql.errors WHERE error_code = 1007);

-- If @error_code is 1, the database already exists
-- If it's 0, the database was successfully created
IF @error_code = 1 THEN
    SELECT 'Database already exists: hbtn_0c_0' AS Message;
ELSE
    SELECT 'Database created: hbtn_0c_0' AS Message;
END IF;
