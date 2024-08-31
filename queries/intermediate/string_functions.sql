-- String Functions Example

-- Description:
-- Manipulate strings in SQL using various string functions.

-- Dataset:
-- File: employees.csv
-- Columns: `first_name`, `last_name`

SELECT CONCAT(first_name, ' ', last_name) AS full_name,
       LENGTH(first_name) AS first_name_length
FROM employees;
