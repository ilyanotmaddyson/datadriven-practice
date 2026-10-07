SELECT
  product_name,
  price
FROM
  products
WHERE
  price > 200
AND
  category = 'Electronics'
AND
  in_stock > 0
ORDER BY
  price DESC
LIMIT
  5
;
