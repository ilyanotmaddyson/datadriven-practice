SELECT
  region,
  COUNT(DISTINCT svc_name) AS service_count
FROM cloud_costs
WHERE amount >= 200
AND LOWER(provider) = 'aws'
GROUP BY region
ORDER BY
  service_count DESC,
  region
