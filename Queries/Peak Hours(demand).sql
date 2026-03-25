-- Peak Hours(demand)

SELECT 
    HOUR(started_at) AS hour, COUNT(*) AS trips
FROM
    trips
WHERE
    status = 'completed'
GROUP BY hour
ORDER BY trips DESC;