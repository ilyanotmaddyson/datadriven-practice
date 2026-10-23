SELECT
  variant,
  AVG(value) AS avg_value
FROM ab_results
WHERE UPPER(variant) = variant
