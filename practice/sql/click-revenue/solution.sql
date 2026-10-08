SELECT
  ad_campaign,
  SUM(revenue) AS click_revenue
FROM ad_impressions
WHERE user_id IS NOT NULL
GROUP BY ad_campaign
HAVING click_revenue > 5
