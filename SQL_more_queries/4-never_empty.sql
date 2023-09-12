-- Create table id_not_null on MySQL server if it doesn't exist
CREATE TABLE IF NOT EXISTS id_not_null (
    id INT DEFAULT 1,
    name VARCHAR(256)
);

-- If id is provided during insert, it will override the default value

-- Insert a sample record
INSERT INTO id_not_null (name) VALUES ('Holberton');
