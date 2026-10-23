SELECT
  call_id,
  endpoint,
  POSITION('s' IN endpoint) AS s_position
FROM api_calls
WHERE LOWER(method) = 'post'
