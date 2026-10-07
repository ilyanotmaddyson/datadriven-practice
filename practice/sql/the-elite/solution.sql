SELECT
  AVG(accuracy) AS avg_accuracy
FROM ml_models
WHERE accuracy BETWEEN 0.91 AND 1;
