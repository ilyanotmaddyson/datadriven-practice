SELECT
  cv.view_id,
  u.user_id,
  u.username
FROM users AS u
INNER JOIN content_views AS cv
ON u.user_id = cv.user_id
