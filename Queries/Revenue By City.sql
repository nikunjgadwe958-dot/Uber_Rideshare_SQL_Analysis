-- Revenue By City

SELECT 
    l.city, SUM(t.total_fare) AS revenue
FROM
    locations l
        JOIN
    trips t ON l.location_id = t.pickup_location_id
WHERE
    t.status = 'completed'
GROUP BY l.city
ORDER BY revenue DESC;