SELECT
  MIN(cpu_pct) AS min_cpu,
  AVG(cpu_pct) AS avg_cpu,
  MAX(cpu_pct) AS max_cpu
FROM infra_nodes;
