-- Create table FORCE_NAME on MySQL server if it doesn't exist
CREATE TABLE IF NOT EXISTS FORCE_NAME (
    ID INT PRIMARY KEY,
    NAME VARCHAR(256) NOT NULL
);

-- Insert data into FORCE_NAME table
INSERT INTO FORCE_NAME (ID, NAME) VALUES (1, 'Holberton School');
INSERT INTO FORCE_NAME (ID, NAME) VALUES (1, 'Python is cool');
INSERT INTO FORCE_NAME (ID, NAME) VALUES (2, 'Holberton');
INSERT INTO FORCE_NAME (ID, NAME) VALUES (3, 'School');
INSERT INTO FORCE_NAME (ID, NAME) VALUES (4, 'C is fun');
