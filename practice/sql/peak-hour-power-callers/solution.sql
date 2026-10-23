SELECT
  user_id,
  COUNT(call_id) AS call_count
FROM api_calls
WHERE TIME(call_time) BETWEEN '15-00' AND '18-00'
GROUP BY user_id
HAVING call_count >= 3
ORDER BY
  call_count DESC
