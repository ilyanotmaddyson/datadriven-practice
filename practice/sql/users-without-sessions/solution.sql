SELECT
  u.user_id AS user_id,
  u.username AS username,
  u.email AS email
FROM users AS u
LEFT JOIN user_sessions AS us
ON u.user_id = us.user_id
WHERE us.user_id IS NULL
