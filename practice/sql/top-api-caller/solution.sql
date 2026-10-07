SELECT
  user_id,
  COUNT(*) AS call_count
FROM api_calls
GROUP BY user_id
LIMIT 1;
