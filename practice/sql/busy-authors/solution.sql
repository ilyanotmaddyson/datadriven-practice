SELECT 
    LOWER(TRIM(author)) AS author,
    COUNT(commit_id) AS commit_count,
    COUNT(DISTINCT repo_name) AS repo_count
FROM repo_commits
WHERE message IS NOT NULL
GROUP BY LOWER(TRIM(author))
HAVING commit_count > 23
ORDER BY author;
