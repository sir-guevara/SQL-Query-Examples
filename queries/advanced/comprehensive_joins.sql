-- Comprehensive Joins Example

-- Description:
-- Retrieve a complete report with customer details, orders, order items, and product details using various joins.

-- Dataset:
-- Files: customers.csv, orders.csv, order_items.csv, products.csv
-- Columns:
--   customers: `customer_id`, `customer_name`
--   orders: `order_id`, `customer_id`, `order_date`
--   order_items: `order_id`, `product_id`, `quantity`
--   products: `product_id`, `product_name`, `price`

WITH CustomerOrders AS (
    -- Get all customers and their orders
    SELECT c.customer_id, c.customer_name, o.order_id, o.order_date
    FROM customers c
    LEFT JOIN orders o ON c.customer_id = o.customer_id
),
OrderItems AS (
    -- Get all orders with their items
    SELECT o.order_id, oi.product_id, oi.quantity, p.product_name, p.price
    FROM orders o
    LEFT JOIN order_items oi ON o.order_id = oi.order_id
    LEFT JOIN products p ON oi.product_id = p.product_id
)

-- Combine customer order information with order items
SELECT co.customer_id, co.customer_name, co.order_id, co.order_date, 
       oi.product_id, oi.product_name, oi.quantity, oi.price
FROM CustomerOrders co
LEFT JOIN OrderItems oi ON co.order_id = oi.order_id
ORDER BY co.customer_id, co.order_id;
