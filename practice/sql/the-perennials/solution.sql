SELECT event_type
FROM event_data
GROUP BY event_type
HAVING COUNT(DISTINCT DATE_TRUNC('month', event_timestamp)) >= 12
