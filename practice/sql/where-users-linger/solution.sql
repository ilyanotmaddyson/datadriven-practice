SELECT
  d.os_name AS os_name,
  AVG(us.session_duration_sec) AS avg_duration
FROM devices AS d
INNER JOIN user_sessions AS us
  ON d.device_id = us.device_id
WHERE device_type = 'mobile'
GROUP BY os_name
ORDER BY avg_duration DESC
LIMIT 1;
