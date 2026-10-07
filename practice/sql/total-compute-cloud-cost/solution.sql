SELECT SUM(amount) AS total_spend
FROM cloud_costs
WHERE LOWER(svc_name) = 'ec2'
