SELECT
  u.user_id AS user_id,
  u.username AS username,
  u.email AS email,
  ac.call_id AS call_id,
  ac.endpoint AS endpoint
FROM users AS u
INNER JOIN api_calls AS ac
ON u.user_id = ac.user_id
WHERE endpoint LIKE '%auth%'
ORDER BY
  user_id,
  call_id
