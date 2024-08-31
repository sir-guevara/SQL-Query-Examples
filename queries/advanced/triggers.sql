-- Triggers Example

-- Description:
-- Create a trigger to automatically update a log table when a new employee is added.

-- Create Log Table
CREATE TABLE employee_log (
    id INT IDENTITY PRIMARY KEY,
    employee_id INT,
    action VARCHAR(50),
    action_date DATETIME DEFAULT GETDATE()
);

-- Create Trigger
CREATE TRIGGER trg_AfterEmployeeInsert
ON employees
AFTER INSERT
AS
BEGIN
    INSERT INTO employee_log (employee_id, action)
    SELECT id, 'Inserted'
    FROM inserted;
END;
