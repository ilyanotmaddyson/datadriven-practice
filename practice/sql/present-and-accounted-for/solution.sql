SELECT
  p.product_name AS product_name,
  COALESCE(SUM(t.total_amount), 0) AS transactions
FROM products AS p
LEFT JOIN transactions AS t
  ON p.product_id = t.product_id
  AND LOWER(p.category) = 'electronics'
GROUP BY product_name
ORDER BY transactions DESC
