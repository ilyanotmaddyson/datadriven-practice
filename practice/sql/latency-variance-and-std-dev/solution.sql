SELECT
  AVG(latency) AS mean_latency,
  VAR_POP(latency) AS variance_latency,
  STDDEV_POP(latency) AS stddev_latency
FROM api_calls
WHERE status = 200
