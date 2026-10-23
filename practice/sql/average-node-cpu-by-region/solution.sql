SELECT
  ino.region AS region,
  AVG(ino.cpu_pct) AS avg_cpu
FROM infra_nodes AS ino
INNER JOIN pod_assignments AS pa
ON ino.node_id = pa.node_id
WHERE LOWER(pa.svc_name) IN(
  'payment-api',
  'gateway',
  'auth-svc')
GROUP BY region
