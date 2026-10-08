SELECT
  DATE(us.session_start) AS session_date,
  COUNT(DISTINCT us.user_id) AS user_count
FROM user_sessions AS us
INNER JOIN devices AS d
ON us.device_id = d.device_id
WHERE LOWER(d.device_type) IN(
'desktop',
'tablet',
'smart_tv')
GROUP BY session_date
ORDER BY session_date ASC;
