SELECT
  u.user_id,
  u.username,
  u.email,
  at.token_id,
  at.scope
FROM users AS u
INNER JOIN api_tokens AS at
ON u.user_id = at.owner_id
WHERE LOWER(at.scope) LIKE '%admin%'
ORDER BY
  user_id,
  at.issued
