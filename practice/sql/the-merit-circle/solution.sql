SELECT
  product_name,
  AVG(rating) AS rating
FROM products
GROUP BY product_name
HAVING rating IS NOT NULL
ORDER BY rating
LIMIT 10
