-- Basic Aggregations

-- Description:
-- Count the number of employees in each department.

-- Dataset:
-- File: employees.csv
-- Columns: `department`

SELECT department, COUNT(*) AS employee_count
FROM employees
GROUP BY department;
