-- Trips Per City 

SELECT 
    l.city, COUNT(*) AS total_trips
FROM
    trips t
        JOIN
    locations l ON t.pickup_location_id = l.location_id
GROUP BY l.city
ORDER BY total_trips DESC;