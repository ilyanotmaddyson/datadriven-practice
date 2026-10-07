SELECT
  COALESCE(ack_by, 'unassigned') AS responder,
  COUNT(alert_id) AS alert_count
FROM alert_events
GROUP BY responder
ORDER BY
  alert_count DESC,
  responder ASC
