-- Create of the MYSQL user user_0d_2
CREATE USER IF NOT EXISTS 'user_0d_2'@'localhost' IDENTIFIED BY 'user_0d_2_password';
GRANT ALL PRIVILEGES ON * . * TO 'user_0d_2'@'localhost'
FLUSH PRIVILEGES;
