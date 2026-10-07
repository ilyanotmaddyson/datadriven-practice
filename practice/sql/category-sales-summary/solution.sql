SELECT 
    p.category AS category,
    COUNT(DISTINCT t.product_id) AS products_sold,
    SUM(t.total_amount) AS total_revenue
FROM transactions AS t
JOIN products AS p
  ON t.product_id = p.product_id
WHERE p.in_stock > 0
GROUP BY p.category
ORDER BY total_revenue DESC;
