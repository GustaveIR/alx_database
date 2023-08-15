#!/bin/bash

# Run the SQL script and capture the output
output=$(cat 5-full_table.sql | mysql -hlocalhost -uroot -p hbtn_test_db_5 2>&1)

# Extract the formatted part of the output using sed
formatted_output=$(echo "$output" | sed -n '/first_tableCREATETABLE/,/230 chars long)/p')

# Print the formatted output
echo "$formatted_output"
