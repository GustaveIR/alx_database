## List Databases Script

This script (`0-list_databases.sql`) lists all databases on the MySQL server. It demonstrates how to retrieve a list of databases using the `SHOW DATABASES;` command.

### Usage

1. Ensure you have MySQL installed and running.
2. Open a terminal or command prompt.
3. Navigate to the directory containing this script.
4. Run the following command to execute the script:

   ```bash
   cat 0-list_databases.sql | mysql -hlocalhost -uroot --password
