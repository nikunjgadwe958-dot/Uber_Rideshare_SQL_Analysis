-- Demand vs supply gap

SELECT l.zone_name, count(t.trip_id) AS total_requests,
sum(CASE WHEN t.status = 'completed' THEN 1 ELSE 0 END) AS completed_trips,
sum(CASE WHEN t.status != 'completed' THEN 1 ELSE 0 END) AS unfulfilled
FROM trips t
JOIN locations l ON t.pickup_location_id = l.location_id
GROUP BY l.zone_name
ORDER BY unfulfilled DESC; 