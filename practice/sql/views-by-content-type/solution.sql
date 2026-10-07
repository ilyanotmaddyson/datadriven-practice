SELECT
  content_type,
  COUNT(cv.view_id) AS view_count
FROM content_items AS ci
LEFT JOIN content_views AS cv
  ON ci.content_id = cv.content_id
GROUP BY content_type
