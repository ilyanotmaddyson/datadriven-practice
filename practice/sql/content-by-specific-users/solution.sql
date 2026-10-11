SELECT
  ci.content_id AS content_id,
  ci.title AS title,
  ci.content_type AS content_type,
  ci.creator_id AS creatot_id
FROM content_items AS ci
INNER JOIN users AS u
ON ci.creator_id = u.user_id
WHERE u.username IN(
  'alice',
  'aaron42',
  'ava99'
)
