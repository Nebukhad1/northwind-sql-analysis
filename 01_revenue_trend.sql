SELECT
    DATE_TRUNC('month', order_date) AS bulan,
    ROUND(SUM(od.unit_price * od.quantity * (1 - od.discount))::numeric, 2) AS total_revenue
FROM orders o
JOIN order_details od ON o.order_id = od.order_id
GROUP BY DATE_TRUNC('month', order_date)
ORDER BY bulan;