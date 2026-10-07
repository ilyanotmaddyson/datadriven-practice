SELECT *
FROM employee_metrics
WHERE (metric_value <= 30.0 OR metric_value >= 60.0)
AND LOWER(metric_name) = 'headcount'
AND LOWER(department) = 'engineering'
ORDER BY metric_value DESC;
