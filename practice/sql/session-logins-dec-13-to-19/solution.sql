SELECT
  DISTINCT user_id
FROM user_sessions
WHERE session_start BETWEEN '2026-12-13' AND '2026-12-19'
