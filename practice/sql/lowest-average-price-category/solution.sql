SELECT
  category,
  AVG(price) AS avg_price
FROM products
GROUP BY category
ORDER BY avg_price ASC
LIMIT 1;
