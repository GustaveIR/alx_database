-- Create table id_not_null on MySQL server if it doesn't exist
CREATE TABLE IF NOT EXISTS id_not_null (
    id INT DEFAULT 1,
    name VARCHAR(256)
);

-- Insert data into id_not_null table
INSERT INTO id_not_null (name) VALUES ('Holberton');
INSERT INTO id_not_null (id, name) VALUES (2, 'Holberton School');
INSERT INTO id_not_null (id, name) VALUES (3, 'Python is cool');
INSERT INTO id_not_null (id, name) VALUES (4, 'School');
INSERT INTO id_not_null (id, name) VALUES (5, 'C is fun');
