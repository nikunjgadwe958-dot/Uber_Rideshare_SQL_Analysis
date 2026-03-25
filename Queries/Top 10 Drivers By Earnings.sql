-- Top 10 Drivers By Earnings 

SELECT 
    d.driver_id, SUM(t.total_fare) AS earnings
FROM
    trips t
        JOIN
    drivers d ON t.driver_id = d.driver_id
WHERE
    t.status = 'completed'
GROUP BY d.driver_id
ORDER BY earnings DESC
LIMIT 10;
