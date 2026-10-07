SELECT
  tbl_name,
  COUNT(check_id) AS failed_checks,
  COUNT(DISTINCT rule) AS distinct_rules,
  AVG(fail_pct) AS avg_fail_pct
FROM dq_checks
WHERE passed = 0
GROUP BY tbl_name
HAVING avg_fail_pct > 30
ORDER BY avg_fail_pct DESC;
