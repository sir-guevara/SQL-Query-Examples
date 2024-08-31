-- Performance Tuning Example

-- Description:
-- Analyze and optimize a query's performance.

-- Query to Analyze
SELECT department, COUNT(*)
FROM employees
GROUP BY department;

-- Explanation:
-- Use execution plans and indexes to optimize this query.