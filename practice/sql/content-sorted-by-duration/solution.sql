SELECT 
  *,
  CAST(duration_seconds AS DECIMAL) AS duration_decimal,
  CAST(MAX(duration_seconds) OVER () - duration_seconds AS DECIMAL) AS diff_from_longest
FROM content_items
ORDER BY 
  duration_seconds DESC,
  content_id ASC;
