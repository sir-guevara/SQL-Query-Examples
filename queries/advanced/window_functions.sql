-- Window Functions Example

-- Description:
-- Use window functions to rank employees by salary within their department.

-- Dataset:
-- File: employees.csv
-- Columns: `employee_id`, `salary`, `department_id`

SELECT employee_id, salary,
       ROW_NUMBER() OVER (PARTITION BY department_id ORDER BY salary DESC) AS row_num
FROM employees;
