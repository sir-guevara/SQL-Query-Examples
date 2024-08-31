-- Multi-Table Joins Example

-- Description:
-- Join multiple tables to retrieve detailed order information.

-- Dataset:
-- Files: orders.csv, customers.csv, order_items.csv, products.csv
-- Columns:
--   orders: `order_id`, `customer_id`
--   customers: `customer_id`, `customer_name`
--   order_items: `order_id`, `product_id`, `quantity`
--   products: `product_id`, `product_name`

SELECT c.customer_name, o.order_id, p.product_name, oi.quantity
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id;
