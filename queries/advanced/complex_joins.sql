-- Complex Joins Example

-- Description:
-- Join multiple tables to retrieve detailed information for orders made in 2024.

-- Dataset:
-- Files: orders.csv, customers.csv, products.csv, products.csv
-- Columns:
--   orders: `order_id`, `salesperson_id`, `order_date`
--   customers: `customer_id`, `customer_name`
--   products: `order_id`, `product_id`
--   products: `product_id`, `product_name`

SELECT e.first_name, e.last_name, o.order_id, c.customer_name, p.product_name
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN products op ON o.order_id = op.order_id
JOIN products p ON op.product_id = p.product_id
WHERE YEAR(o.order_date) = 2024;
