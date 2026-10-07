SELECT
  p.product_id AS product_id,
  p.product_name AS product_name,
  COALESCE(SUM(total_amount), 0) AS total_revenue
FROM products AS p
LEFT JOIN transactions AS t
ON p.product_id = t.product_id
GROUP BY product_name
ORDER BY product_id
