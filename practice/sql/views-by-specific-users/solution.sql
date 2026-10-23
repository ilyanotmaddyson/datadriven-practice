SELECT
  cv.view_id,
  cv.content_id,
  cv.viewed_at,
  cv.watch_seconds
FROM content_views AS cv
INNER JOIN users AS u
ON cv.user_id = u.user_id
WHERE SUBSTR(u.username, 1, 1) = 'a'
ORDER BY cv.viewed_at ASC
