SELECT
  COUNT(user_id) AS signup_count
FROM users
WHERE YEAR(signup_date) = 2025
