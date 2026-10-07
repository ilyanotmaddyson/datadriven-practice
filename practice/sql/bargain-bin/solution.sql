SELECT
  category,
  MIN(price) AS floor_price,
  MAX(price) AS ceiling_price,
  MAX(price) - MIN(price) AS price_spread
FROM products
WHERE in_stock = 0
AND rating IS NOT NULL
GROUP BY category
