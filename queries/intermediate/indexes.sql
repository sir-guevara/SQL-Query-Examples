-- Indexes Example

-- Description:
-- Create and use indexes to improve query performance.

-- Create Index
CREATE INDEX idx_department ON employees(department);

-- Query Using Index
SELECT first_name, last_name
FROM employees
WHERE department = 'Sales';
