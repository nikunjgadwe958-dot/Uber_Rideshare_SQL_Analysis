-- Repeat vs one-time riders

SELECT CASE WHEN trip_count = 1 THEN 'One-time'
ELSE 'Repeat'
END AS rider_type, count(*) AS riders
FROM(SELECT r.rider_id, count(t.trip_id) as trip_count
FROM riders r
LEFT JOIN trips t ON r.rider_id = t.rider_id
AND t.status = 'completed'
GROUP BY rider_id)
AS rider_counts
GROUP BY rider_type;