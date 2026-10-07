SELECT
  category,
  SUM(amount) AS total_amount
FROM cost_allocs
GROUP BY category
ORDER BY category ASC;
