SELECT 
COUNT (ride_id) AS total_id
FROM rider_data.rider_data2021

SELECT
COUNT (DISTINCT (ride_id)) AS unique_id
FROM rider_data.rider_data2021
