SELECT DISTINCT feat_name
FROM ml_features
WHERE avg_val IS NULL
AND source = 'user_sessions'
ORDER BY feat_name ASC
