SELECT
  d.device_type AS device_type,
  COUNT(DISTINCT user_id) AS user_count
FROM user_sessions AS us
LEFT JOIN devices AS d
  ON d.device_id = us.device_id
GROUP BY
  device_type
