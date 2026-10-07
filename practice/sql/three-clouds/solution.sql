SELECT
  amount
FROM cloud_costs
WHERE LOWER(provider) IN(
  'aws',
  'azure',
  'gcp'
)
ORDER BY amount ASC;
