SELECT
  DISTINCT u.user_id as user_id
FROM users AS u
INNER JOIN event_data AS ed
ON u.user_id = ed.user_id
WHERE LOWER(ed.event_type) = 'purchase'
