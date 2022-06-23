DELETE 
FROM rider_data.rider_data2021
WHERE ride_length = 0 OR
ride_length < 0 OR
ride_length > 1440