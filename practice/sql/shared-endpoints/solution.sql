SELECT
  endpoint,
  COUNT(DISTINCT user_id) AS user_count
FROM api_calls
WHERE LOWER(endpoint) != '/api/v1/auth/login'
GROUP BY endpoint
HAVING user_count > 60
