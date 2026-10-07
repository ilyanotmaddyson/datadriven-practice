SELECT
  user_id,
  SUM(total_amount) AS lifetime_spend,
  COUNT(transaction_id) AS tx_count
FROM transactions
WHERE total_amount > 0
GROUP BY user_id
HAVING tx_count >= 13
ORDER BY lifetime_spend DESC
