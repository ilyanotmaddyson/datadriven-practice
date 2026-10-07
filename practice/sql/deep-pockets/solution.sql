SELECT
  user_id,
  SUM(total_amount) AS total_revenue
FROM transactions
WHERE transaction_date BETWEEN '2026-03-01' AND '2026-03-31'
GROUP BY user_id
ORDER BY total_revenue DESC;
