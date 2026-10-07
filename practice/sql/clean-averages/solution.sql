SELECT
  category,
  COUNT(product_id) AS rated_products,
  ROUND(AVG(rating), 1) AS avg_rating
FROM products
WHERE rating > 0
GROUP BY category
HAVING rated_products > 2
