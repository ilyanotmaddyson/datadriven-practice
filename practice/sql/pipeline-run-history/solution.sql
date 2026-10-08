SELECT
  pipe_name,
  MIN(start_at) AS first_run,
  MAX(start_at) AS last_run,
  COUNT(DISTINCT DATE_TRUNC('month', start_at)) AS active_months
FROM data_pipes
GROUP BY pipe_name
