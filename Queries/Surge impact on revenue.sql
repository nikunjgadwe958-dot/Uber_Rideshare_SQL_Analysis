-- Surge impact on revenue

SELECT CASE WHEN surge_multiplier > 1 THEN 'Surge'
ELSE 'Normal'
END AS surge_type, avg(total_fare) AS avg_revenue
FROM trips 
WHERE status = 'completed'
GROUP BY surge_type; 