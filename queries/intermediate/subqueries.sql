-- Subqueries Example

-- Description:
-- Retrieve employees who work in a department named 'Sales' using a subquery.

-- Dataset:
-- Files: employees.csv, departments.csv
-- Columns: 
--   employees: `first_name`, `last_name`, `department_id`
--   departments: `department_id`, `department_name`

SELECT first_name, last_name
FROM employees
WHERE department_id IN (SELECT department_id FROM departments WHERE department_name = 'Sales');
