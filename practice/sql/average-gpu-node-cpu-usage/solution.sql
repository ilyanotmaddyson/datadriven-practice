SELECT AVG(cpu_pct) AS avg_cpu_pct
FROM infra_nodes
WHERE LOWER(node_type) = 'gpu'
