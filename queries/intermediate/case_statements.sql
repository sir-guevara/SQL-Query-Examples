-- CASE Statements Example

-- Description:
-- Categorize employees' salaries into 'High', 'Medium', or 'Low'.

-- Dataset:
-- File: employees.csv
-- Columns: `salary`

SELECT first_name, last_name,
  CASE
    WHEN salary > 70000 THEN 'High'
    WHEN salary BETWEEN 40000 AND 70000 THEN 'Medium'
    ELSE 'Low'
  END AS salary_level
FROM employees;
