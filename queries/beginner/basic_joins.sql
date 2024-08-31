-- Basic JOIN Query

-- Description:
-- Retrieve `order_id` and `customer_name` by joining `orders` and `customers` tables on `customer_id`.

-- Dataset:
-- Files: orders.csv, customers.csv
-- Columns: 
--   orders: `order_id`, `customer_id`
--   customers: `customer_id`, `customer_name`

SELECT orders.order_id, customers.customer_name
FROM orders
JOIN customers ON orders.customer_id = customers.customer_id;
