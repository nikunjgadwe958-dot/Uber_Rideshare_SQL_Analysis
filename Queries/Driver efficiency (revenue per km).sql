-- Driver efficiency (revenue per km)

SELECT 
    driver_id,
    SUM(total_fare) / SUM(distance_km) AS Revenue_per_km
FROM
    trips
WHERE
    status = 'completed'
GROUP BY driver_id
HAVING SUM(distance_km) > 0
ORDER BY Revenue_per_km DESC;  