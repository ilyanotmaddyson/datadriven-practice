SELECT
  u.*
FROM users AS u
LEFT JOIN user_sessions AS us
    ON u.user_id = us.user_id
    AND us.session_start LIKE '%2026-03%'
WHERE u.account_status = 'pending_verification'
  AND us.session_id IS NULL;
