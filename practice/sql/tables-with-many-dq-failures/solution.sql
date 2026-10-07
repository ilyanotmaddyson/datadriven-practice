SELECT
  tbl_name,
  COUNT(check_id) AS fail_count
FROM dq_checks
WHERE passed = 0
GROUP BY tbl_name
ORDER BY
  fail_count DESC,
  tbl_name
