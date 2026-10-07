SELECT
  env_name,
  COUNT(log_id) AS deploy_count,
  AVG(dur_secs) AS avg_duration,
  COUNT(DISTINCT svc_name) AS unique_services
FROM deploy_logs
GROUP BY env_name
ORDER BY
  deploy_count DESC,
  env_name
