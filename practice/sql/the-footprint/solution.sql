SELECT
  region,
  COUNT(node_id) AS node_count
FROM infra_nodes
GROUP BY region
