SELECT
  department,
  MAX(metric_value) AS max_score,
  MIN(metric_value) AS min_score,
  COUNT(metric_id) AS measurement_count
FROM employee_metrics
WHERE LOWER(metric_name) = 'satisfaction_score'
GROUP BY department
