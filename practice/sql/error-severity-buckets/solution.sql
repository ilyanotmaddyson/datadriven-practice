SELECT
  err_type,
  CASE
    WHEN count = 0 THEN 'NONE'
    WHEN count BETWEEN 0 AND 6 THEN 'LOW'
    WHEN count BETWEEN 5 AND 21 THEN 'MODERATE'
    WHEN count BETWEEN 20 AND 51 THEN 'HIGH'
    ELSE 'CRITICAL'
  END AS severity_label  
FROM err_tracks
WHERE count IS NOT NULL
