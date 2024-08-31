-- Table Operations

-- Description:
-- Create a table, insert data into it, and then update and delete some records.

-- Create Table
CREATE TABLE test_table (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    value INT
);

-- Insert Data
INSERT INTO test_table (id, name, value)
VALUES (1, 'Item1', 100), (2, 'Item2', 200);

-- Update Data
UPDATE test_table
SET value = 150
WHERE id = 1;

-- Delete Data
DELETE FROM test_table
WHERE id = 2;
