SELECT
  LOWER(err_type) AS error_type,
  SUM(count) AS occurrences
FROM err_tracks
GROUP BY error_type
ORDER BY occurrences DESC
