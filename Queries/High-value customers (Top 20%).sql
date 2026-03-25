-- High-value customers (Top 20%)

WITH rider_spend AS (SELECT rider_id, SUM(total_fare) AS total_spent
FROM trips
WHERE status = 'completed'
GROUP BY rider_id),
ranked AS (SELECT *,
NTILE(5) OVER (ORDER BY total_spent DESC) AS bucket
FROM rider_spend)
SELECT * FROM ranked
WHERE bucket = 1;