SELECT
  dl.author,
  ROUND(AVG(sh.latency), 2) AS avg_score
FROM deploy_logs AS dl
INNER JOIN svc_health AS sh
  ON dl.svc_name = sh.svc_name
GROUP BY LOWER(dl.author)
ORDER BY avg_score DESC
