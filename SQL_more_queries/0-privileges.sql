-- Check if the user 'user_0d_1' exists
SELECT EXISTS(SELECT 1 FROM mysql.user WHERE user = 'user_0d_1' AND host = 'localhost') AS 'user_0d_1_exists';

-- Check if the user 'root' exists
SELECT EXISTS(SELECT 1 FROM mysql.user WHERE user = 'root' AND host = 'localhost') AS 'root_exists';

-- Check if 'user_0d_1' has all privileges
SELECT IF(
    (SELECT ALL_PRIVILEGES FROM information_schema.USER_PRIVILEGES WHERE GRANTEE = "'user_0d_1'@'localhost'") IS NOT NULL,
    'user_0d_1 has all privileges',
    'user_0d_1 does not have all privileges'
) AS 'user_0d_1_privileges';

-- Check if 'root' has all privileges
SELECT IF(
    (SELECT ALL_PRIVILEGES FROM information_schema.USER_PRIVILEGES WHERE GRANTEE = "'root'@'localhost'") IS NOT NULL,
    'root has all privileges',
    'root does not have all privileges'
) AS 'root_privileges';
