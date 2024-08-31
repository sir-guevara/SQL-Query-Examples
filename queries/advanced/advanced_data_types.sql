-- Advanced Data Types Example

-- Description:
-- Work with JSON data and other advanced data types.

-- Create Table with JSON Data
CREATE TABLE json_example (
    id INT PRIMARY KEY,
    data JSON
);

-- Insert JSON Data
INSERT INTO json_example (id, data)
VALUES (1, '{"name": "John", "age": 30}');

-- Query JSON Data
SELECT id, JSON_VALUE(data, '$.name') AS name
FROM json_example;
