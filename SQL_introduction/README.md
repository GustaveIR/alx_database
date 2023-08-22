# SQL Introduction Scripts

This repository contains a collection of SQL scripts that demonstrate various concepts in database management. Each script is designed to work with MySQL databases.

## Script Descriptions

1. `0-list_databases.sql`: This script lists all databases on the MySQL server. It demonstrates how to retrieve a list of databases using the `SHOW DATABASES;` command.

2. `1-create_database.sql`: This script demonstrates how to create a new database named `hbtn_test_db_5`.

3. `2-create_table.sql`: This script creates a table named `first_table` within the `hbtn_test_db_5` database. The table has columns `id`, `name`, `c`, and `created_at`.

4. `3-insert_data.sql`: This script inserts sample data into the `first_table` table.

5. `4-select_data.sql`: This script performs a basic SELECT query to retrieve data from the `first_table` table.

6. `5-full_table.sql`: This script prints the full description of the `first_table` table, including column names, types, nullability, and default values. It uses a special approach due to constraints on using DESCRIBE or EXPLAIN statements.

## Special Instructions

- Make sure you have a MySQL server installed and running.
- Use the provided database and table names (`hbtn_test_db_5` and `first_table`).
- Each script is designed to be executed individually using the `mysql` command-line tool or a compatible SQL client.

## Applying Changes to a Database

1. Open your preferred method for executing SQL scripts (e.g., command-line MySQL client, SQL GUI tool, VS Code with SQL extension).
2. Connect to your MySQL server using appropriate credentials.
3. Navigate to the directory containing the script you want to execute.
4. Run the script using the appropriate command. For example:
   ```bash
   cat 0-list_databases.sql | mysql -hlocalhost -uroot --password
