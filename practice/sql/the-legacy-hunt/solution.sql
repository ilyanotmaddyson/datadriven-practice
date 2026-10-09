SELECT
  DISTINCT DATE(start_at)
FROM data_pipes
WHERE DATE(start_at) < '2026-05-01'
