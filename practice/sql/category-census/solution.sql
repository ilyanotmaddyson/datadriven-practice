SELECT
  category,
  COUNT(product_id) AS product_count
FROM products
WHERE rating >= 4
GROUP BY category
HAVING product_count > 4
ORDER BY
  product_count DESC,
  category ASC
