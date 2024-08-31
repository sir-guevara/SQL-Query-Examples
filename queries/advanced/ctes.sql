-- Common Table Expressions (CTE) Example

-- Description:
-- Use CTE to calculate department salaries and join with department names.

-- Dataset:
-- Files: employees.csv, departments.csv
-- Columns: 
--   employees: `department_id`, `salary`
--   departments: `department_id`, `department_name`

WITH department_totals AS (
    SELECT department_id, SUM(salary) AS total_salary
    FROM employees
    GROUP BY department_id
)
SELECT d.department_name, dt.total_salary
FROM department_totals dt
JOIN departments d ON dt.department_id = d.department_id;
