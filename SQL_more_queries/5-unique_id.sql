-- Create table UNIQUE_ID if it doesn't exist
CREATE TABLE IF NOT EXISTS UNIQUE_ID (
    id INT DEFAULT 1,
    name VARCHAR(256),
    UNIQUE (id)
);
