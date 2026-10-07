SELECT
  DATE(session_start) AS day,
  COUNT(DISTINCT user_id) AS dau
FROM user_sessions
GROUP BY day
HAVING dau > 0
ORDER BY day ASC
