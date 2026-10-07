SELECT
  us.user_id AS user_id,
  d.device_type AS device_type,
  d.os_name AS os_name,
  us.session_duration_sec AS session_duration_sec
FROM devices AS d
  INNER JOIN user_sessions AS us
  ON d.device_id = us.device_id
WHERE us.session_duration_sec > 1000
