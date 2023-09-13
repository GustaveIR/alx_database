-- Creates table UNIQUE_ID on MySQL server.


CREATE TABLE IF NOT EXISTS UNIQUE_ID (
    id INT DEFAULT 1, UNIQUE(ID),
    name VARCHAR(256)
);
