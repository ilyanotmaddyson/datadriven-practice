SELECT
  ad_campaign,
  COUNT(clicked) AS impressions,
  AVG(COALESCE(revenue, 0)) AS avg_revenue_per_impression
FROM ad_impressions
GROUP BY ad_campaign
ORDER BY avg_revenue_per_impression DESC
