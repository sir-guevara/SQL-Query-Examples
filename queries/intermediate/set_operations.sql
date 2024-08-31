-- Set Operations Example

-- Description:
-- Combine results from two queries using `UNION`.

-- Dataset:
-- File: employees.csv
-- Columns: `department`

SELECT first_name, last_name
FROM employees
WHERE department = 'Sales'
UNION
SELECT first_name, last_name
FROM employees
WHERE department = 'Marketing';
