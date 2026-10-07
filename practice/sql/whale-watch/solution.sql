SELECT
  user_id,
  SUM(total_amount) AS total_spend,
  COUNT(transaction_id) AS txn_count,
  ROUND(AVG(total_amount), 2) AS avg_txn_size
FROM transactions
GROUP BY user_id
ORDER BY total_spend DESC;
