WITH repo_stats AS (
  SELECT
    repo_name,
    SUM(added) AS lines_added,
    COUNT(*) AS commit_count
  FROM
    repo_commits
  GROUP BY
    repo_name
)
SELECT
  repo_name,
  lines_added,
  commit_count
FROM
  repo_stats
WHERE
  lines_added > (
    SELECT AVG(lines_added) 
    FROM repo_stats
  )
ORDER BY
  lines_added DESC;
