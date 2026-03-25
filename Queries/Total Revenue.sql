-- Total Revenue 

SELECT 
    SUM(total_fare) AS Total_revenue
FROM
    trips
WHERE
    status = 'completed';