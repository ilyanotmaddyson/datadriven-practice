SELECT
  p.product_id,
  p.product_name
FROM products AS p
LEFT JOIN transactions AS t
  ON p.product_id = t.product_id
WHERE t.product_id IS NULL;
