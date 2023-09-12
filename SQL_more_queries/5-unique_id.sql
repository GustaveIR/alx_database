-- Create table UNIQUE_ID on MySQL server if it doesn't exist
CREATE TABLE IF NOT EXISTS UNIQUE_ID (
    ID INT DEFAULT 1 UNIQUE,
    NAME VARCHAR(256)
);
