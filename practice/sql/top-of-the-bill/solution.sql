SELECT 
    svc_name,
    SUM(amount) AS total_cost
FROM 
    cloud_costs
WHERE 
    svc_name IN (
        SELECT DISTINCT svc_name 
        FROM cost_allocs
    )
GROUP BY 
    svc_name
ORDER BY 
    total_cost DESC
LIMIT 2;
