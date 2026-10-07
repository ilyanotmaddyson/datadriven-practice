SELECT
  u.user_id AS user_id,
  COUNT(*) AS session_count
FROM users AS u
INNER JOIN user_sessions AS us
  ON u.user_id = us.user_id
GROUP BY u.user_id
HAVING session_count > 3
