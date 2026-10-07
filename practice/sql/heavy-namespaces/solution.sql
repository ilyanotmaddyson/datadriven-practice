SELECT
  nspace,
  COUNT(pod_id) AS failing_pods
FROM k8s_pods
WHERE LOWER(status) IN(
  'error',
  'crashloopbackoff')
GROUP BY nspace
HAVING failing_pods > 12
