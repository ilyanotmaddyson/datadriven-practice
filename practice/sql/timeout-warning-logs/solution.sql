SELECT *
FROM server_logs
WHERE message = 'Connection timeout after 30s'
AND log_level = 'WARN'
