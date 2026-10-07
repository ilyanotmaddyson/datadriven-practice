SELECT
  content_type,
  COALESCE(
    SUM(duration_seconds), 0
  ) AS total_duration,
  COUNT(content_id) AS item_count
FROM content_items
GROUP BY content_type
ORDER BY total_duration DESC
