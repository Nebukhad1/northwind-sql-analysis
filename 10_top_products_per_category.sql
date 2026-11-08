SELECT
    cat.category_name,
    p.product_name,
    SUM(od.quantity) AS total_quantity_sold
FROM products p
JOIN categories cat ON p.category_id = cat.category_id
JOIN order_details od ON p.product_id = od.product_id
GROUP BY cat.category_name, p.product_name
ORDER BY cat.category_name, total_quantity_sold DESC;