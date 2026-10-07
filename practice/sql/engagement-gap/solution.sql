SELECT
  u.username,
  COALESCE(COUNT(t.transaction_id), 0) AS transactions_count
FROM users AS u
LEFT JOIN transactions AS t
ON u.user_id = t.user_id
GROUP BY username
