SELECT
  YEAR(bill_date) AS fiscal_year,
  SUM(amount) AS total_spend,
  COUNT(DISTINCT svc_name)
FROM cloud_costs
GROUP BY fiscal_year
