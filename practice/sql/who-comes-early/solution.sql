SELECT
  YEAR(signup_date) AS signup_year,
  COUNT(user_id) AS signup_count
FROM users
WHERE EXTRACT(month FROM signup_date) IN(1, 2, 3, 4, 5, 6, 7)
GROUP BY signup_year;
