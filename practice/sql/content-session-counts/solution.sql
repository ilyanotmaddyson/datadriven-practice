SELECT
  pv.page_url AS page_url,
  COUNT(DISTINCT us.session_id) AS unique_sessions
FROM page_views AS pv
INNER JOIN user_sessions AS us
ON pv.user_id = us.user_id
WHERE us.user_id IS NOT NULL
GROUP BY page_url
ORDER BY
  unique_sessions DESC,
  page_url
