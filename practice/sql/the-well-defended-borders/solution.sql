SELECT
  region,
  COUNT(node_id) AS node_count
FROM infra_nodes
WHERE LOWER(status) = 'running'
GROUP BY region
HAVING node_count >= 14
