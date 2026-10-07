SELECT
  department,
  metric_name,
  MAX(metric_value) AS metric_value
FROM employee_metrics
GROUP BY department
ORDER BY department ASC
