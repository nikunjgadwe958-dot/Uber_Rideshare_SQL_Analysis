-- Cancellation rate by city

SELECT 
    l.city,
    COUNT(c.cancel_id) * 1.0 / COUNT(t.trip_id) AS cancellation_rate
FROM
    trips t
        LEFT JOIN
    cancellations c ON t.trip_id = c.trip_id
        JOIN
    locations l ON t.pickup_location_id = l.location_id
GROUP BY l.city;