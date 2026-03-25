-- Anomaly detection (suspicious trips)

SELECT 
    *
FROM
    trips
WHERE
    (distance_km < 1 AND total_fare > 100)
        OR (duration_mins = 0
        AND status = 'completed')
        OR (total_fare IS NULL);