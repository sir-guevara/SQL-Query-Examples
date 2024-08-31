-- Transaction Management Example

-- Description:
-- Use transactions to ensure data integrity during complex operations.

-- Begin Transaction
BEGIN TRANSACTION;

-- Perform Operations
UPDATE employees
SET salary = salary * 1.05
WHERE department = 'Sales';

-- Check for errors
IF @@ERROR <> 0
BEGIN
    ROLLBACK TRANSACTION;
    RETURN;
END

-- Commit Transaction
COMMIT TRANSACTION;
