SELECT
  username,
  COALESCE(email, 'unknown') ASemail,
  COALESCE(age_bucket, 'unspecified') AS age_bucket
FROM users
WHERE LOWER(account_status) = 'active'
