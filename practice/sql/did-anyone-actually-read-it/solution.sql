SELECT
  platform,
  COUNT(notif_id) AS opened_count
FROM push_notifs
WHERE LOWER(status) = 'delivered'
AND opened = 1
AND YEAR(sent_at) = 2026
GROUP BY platform
ORDER BY opened_count DESC
