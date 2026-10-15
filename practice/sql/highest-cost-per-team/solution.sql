SELECT
  LOWER(team_name),
  MAX(amount) AS max_amount
FROM cost_allocs
GROUP BY LOWER(team_name)
ORDER BY max_amount DESC
