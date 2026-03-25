-- Driver efficiency (revenue per minute)

SELECT 
    driver_id,
    SUM(total_fare) / SUM(duration_mins) AS revenue_per_min
FROM
    trips
WHERE
    status = 'completed'
GROUP BY driver_id
HAVING SUM(duration_mins) > 0
ORDER BY revenue_per_min DESC; 