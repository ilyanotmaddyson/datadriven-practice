SELECT
  MONTH(transaction_date) AS month,
  COUNT(DISTINCT user_id) AS users,
  COUNT(transaction_id) AS total_transactions
FROM transactions
WHERE total_amount > 50
GROUP BY month
