SELECT
  ad_campaign,
  ROUND(SUM(clicked) * 100.0 / COUNT(impression_id), 2) as ctr_pct,
  SUM(revenue) AS total_revenue,
  COUNT(impression_id) AS impressions
FROM ad_impressions
GROUP BY ad_campaign
HAVING ctr_pct >= 20
ORDER BY
  ctr_pct DESC,
  ad_campaign ASC
