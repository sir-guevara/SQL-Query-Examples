-- Filtering Data

-- Description:
-- Retrieve employees whose department is 'Sales'.

-- Dataset:
-- File: employees.csv
-- Columns: `department`

SELECT first_name, last_name
FROM employees
WHERE department = 'Sales';
