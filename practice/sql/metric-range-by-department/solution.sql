SELECT
  department,
  ROUND(AVG(metric_value), 2) AS avg_value,
  ROUND(MIN(metric_value), 2) AS min_value,
  ROUND(MAX(metric_value), 2) AS max_value
FROM employee_metrics
GROUP BY department
ORDER BY avg_value DESC;
