SELECT
  status,
  COUNT(*) AS pod_count
FROM k8s_pods
WHERE restarts = 0
GROUP BY status
ORDER BY
  pod_count DESC,
  status ASC
;
