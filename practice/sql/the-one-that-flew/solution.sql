SELECT
  built_at,
  dur_secs
FROM ci_builds
WHERE dur_secs IS NOT NULL
ORDER BY
  dur_secs,
  built_at
LIMIT 1
