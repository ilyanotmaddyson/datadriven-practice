SELECT
  svc_name,
  COUNT(check_id) AS check_count
FROM svc_health
GROUP BY svc_name
ORDER BY
  check_count DESC,
  svc_name
