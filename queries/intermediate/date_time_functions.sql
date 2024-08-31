-- Date and Time Functions Example

-- Description:
-- Use date and time functions to filter and format dates.

-- Dataset:
-- File: employees.csv
-- Columns: `hire_date`

SELECT first_name, last_name, hire_date,
       DATEPART(YEAR, GETDATE()) - DATEPART(YEAR, hire_date) AS years_with_company
FROM employees;
