-- Regular inserts + select
INSERT INTO states (id, name) VALUES (1, "California");
INSERT INTO states (id, name) VALUES (2, "Arizona");
INSERT INTO states (name) VALUES ("Nevada");
INSERT INTO states (name) VALUES ("Illinois");
INSERT INTO states (id, name) VALUES (10, "New York");
INSERT INTO states (name) VALUES ("Louisiana");

SELECT * FROM states ORDER BY id ASC;