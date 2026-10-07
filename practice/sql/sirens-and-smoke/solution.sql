SELECT *
FROM alert_events
WHERE LOWER(severity) IN(
  'high',
  'critical'
)
AND YEAR(fired_at) >= '2026'
