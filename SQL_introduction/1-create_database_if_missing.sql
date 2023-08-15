-- Attempt to create the database (will fail if it already exists)
CREATE DATABASE IF NOT EXISTS hbtn_0c_0;

-- Create a temporary table to store the result of the attempt
CREATE TEMPORARY TABLE IF NOT EXISTS create_db_result (message VARCHAR(100));

-- Insert a message based on the attempt result
INSERT INTO create_db_result (message) VALUES
    (IFNULL(NULLIF(LAST_INSERT_ID(CONNECTION_ID()), 0), 'Database already exists: hbtn_0c_0'));

-- Display the result
SELECT message FROM create_db_result;
