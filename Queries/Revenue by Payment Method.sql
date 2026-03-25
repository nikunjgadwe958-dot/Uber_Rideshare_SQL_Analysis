-- Revenue by Payment Method 

SELECT 
    payment_method, SUM(total_fare) AS revenue
FROM
    trips
WHERE
    status = 'completed'
GROUP BY payment_method
ORDER BY revenue DESC;