-- Create table unique_id on MySQL server if it doesn't exist
CREATE TABLE IF NOT EXISTS unique_id (
    id INT DEFAULT 1 UNIQUE,
    name VARCHAR(256)
);

-- Insert data into unique_id table
INSERT INTO unique_id (id, name) VALUES (89, 'Holberton School');
