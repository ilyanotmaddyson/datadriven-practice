SELECT
  COUNT(DISTINCT u.user_id) AS active_users_with_transactions
FROM users AS u
INNER JOIN transactions AS t
ON u.user_id = t.user_id
WHERE LOWER(u.account_status) = 'active'
AND t.transaction_date BETWEEN '2026-04-01' AND '2026-04-30'
