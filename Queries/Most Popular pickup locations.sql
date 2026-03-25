-- Most Popular pickup locations

SELECT 
    l.zone_name, COUNT(*) AS trips
FROM
    trips t
        JOIN
    locations l ON t.pickup_location_id = l.location_id
GROUP BY l.zone_name
ORDER BY trips DESC
LIMIT 10;