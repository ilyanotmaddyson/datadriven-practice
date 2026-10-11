SELECT
  svc_name,
  COUNT(DISTINCT log_id) AS deploy_count,
  MAX(dur_secs) AS max_duration
FROM deploy_logs
WHERE env_name = 'production'
AND EXTRACT(MONTH from deploy_at) IN (4, 5, 6, 7, 8, 9, 10, 11, 12)
GROUP BY svc_name
ORDER BY
  deploy_count DESC,
  max_duration DESC
