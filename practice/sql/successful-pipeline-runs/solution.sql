SELECT
  pipe_name,
  COUNT(pipe_id) AS success_count
FROM data_pipes
WHERE status = 'success'
GROUP BY pipe_name
ORDER BY success_count DESC
