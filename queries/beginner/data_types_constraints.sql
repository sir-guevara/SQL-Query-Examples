-- Data Types and Constraints

-- Description:
-- Show examples of different data types and constraints.

-- Create Table with Constraints
CREATE TABLE employee (
    id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50),
    birth_date DATE,
    salary DECIMAL(10, 2) CHECK (salary >= 0)
);
