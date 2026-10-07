SELECT
  model_id,
  mdl_name,
  accuracy
FROM ml_models
ORDER BY
  accuracy DESC
LIMIT 10;
