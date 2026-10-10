SELECT
  department,
  MAX(metric_value) AS peak_value
FROM employee_metrics
GROUP BY department
ORDER BY peak_value DESC
