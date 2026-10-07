SELECT
  user_id,
  COUNT(*) AS total_views
FROM page_views
WHERE DATE(viewed_at) BETWEEN '2025-01-01' AND '2025-12-28'
GROUP BY user_id;
