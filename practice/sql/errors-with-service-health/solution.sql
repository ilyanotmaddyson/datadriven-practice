SELECT
 et.err_id AS err_id,
  et.err_type AS err_type,
  et.message AS message,
  et.svc_name AS svc_name,
  et.severity AS severity,
  et.count AS count,
  et.first_at AS first_at,
  sh.status AS status,
  sh.latency AS latency,
  sh.uptime AS uptime
FROM err_tracks AS et
INNER JOIN svc_health AS sh
ON et.svc_name = sh.svc_name
