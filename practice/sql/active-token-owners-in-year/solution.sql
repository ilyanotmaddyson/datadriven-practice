SELECT
  COUNT(DISTINCT owner_id) AS distinct_owners
FROM api_tokens
WHERE YEAR(issued) = 2026
