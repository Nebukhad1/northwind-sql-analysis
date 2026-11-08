SELECT
    cat.category_name,
    ROUND(SUM(od.unit_price * od.quantity * (1 - od.discount))::numeric, 2) AS revenue,
    ROUND((100.0 * SUM(od.unit_price * od.quantity * (1 - od.discount)) /
          (SELECT SUM(unit_price * quantity * (1 - discount)) FROM order_details))::numeric, 2) AS pct_of_total
FROM categories cat
JOIN products p ON cat.category_id = p.category_id
JOIN order_details od ON p.product_id = od.product_id
GROUP BY cat.category_name
ORDER BY revenue DESC;