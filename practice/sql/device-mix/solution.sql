SELECT
  device_type,
  os_name,
  COUNT(device_id) AS device_count
FROM devices
WHERE browser IS NOT NULL
GROUP BY device_type, os_name
HAVING device_count >= 3
