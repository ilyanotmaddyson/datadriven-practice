SELECT
  user_id,
  TO_CHAR(transaction_date, 'YYYY-MM') AS month,
  COUNT(transaction_date) AS transaction_count
FROM transactions
GROUP BY
  user_id,
  month
ORDER BY
  user_id,
  month ASC
