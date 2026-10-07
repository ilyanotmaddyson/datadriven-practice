SELECT
  domain,
  rec_type,
  MAX(latency) AS max_latency
FROM dns_lookups
GROUP BY domain
ORDER BY max_latency DESC
LIMIT 5;
