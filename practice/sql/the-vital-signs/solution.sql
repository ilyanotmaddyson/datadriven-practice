SELECT
  status,
  COUNT(check_id) AS check_count
FROM svc_health
WHERE LOWER(svc_name) = 'auth-svc'
GROUP BY status
