SELECT c.company_name, MAX(o.order_date) AS last_order
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.company_name
HAVING MAX(o.order_date) < (SELECT MAX(order_date) - INTERVAL '6 months' FROM orders)
   OR MAX(o.order_date) IS NULL
ORDER BY last_order;