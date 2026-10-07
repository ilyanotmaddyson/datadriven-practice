SELECT
  search_term,
  results_count
FROM search_queries
WHERE LOWER(SUBSTR(search_term, 1, 1)) = 'g'
