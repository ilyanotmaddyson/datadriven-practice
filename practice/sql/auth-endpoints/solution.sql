SELECT
  endpoint,
  latency
FROM api_calls
WHERE LOWER(endpoint) LIKE '%auth%'
