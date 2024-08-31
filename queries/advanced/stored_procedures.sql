-- Stored Procedures Example

-- Description:
-- Create and call a stored procedure to get employee details by department.

-- Create Stored Procedure
CREATE PROCEDURE GetEmployeesByDepartment
    @department_name VARCHAR(50)
AS
BEGIN
    SELECT first_name, last_name
    FROM employees
    WHERE department = @department_name;
END;

-- Call Stored Procedure
EXEC GetEmployeesByDepartment @department_name = 'Sales';
