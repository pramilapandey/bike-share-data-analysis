ALTER TABLE rider_data.rider_data2021
ADD ride_length float;

UPDATE rider_data.rider_data2021
SET ride_length = ROUND(Extract(epoch FROM (ended_at - started_at)/60), 2)

