SELECT
  u.user_id AS user_id,
  COALESCE(
    COUNT(DISTINCT ed.event_type), 0
  ) AS event_type_count
FROM users AS u
LEFT OUTER JOIN event_data AS ed
ON u.user_id = ed.user_id
GROUP BY u.user_id
