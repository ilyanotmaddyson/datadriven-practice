SELECT
  flag_name,
  enabled AS enabled_flag,
  CASE
    WHEN enabled = 0 THEN 1
    ELSE 0
  END AS disabled_glasg
FROM feat_flags
GROUP BY flag_name
HAVING MAX(updated)
