SELECT
COUNT (CASE WHEN rideable_type = 'classic_bike' THEN 1 ELSE NULL END) AS classicbike_ride,
COUNT (CASE WHEN rideable_type = 'electric_bike' THEN 1 ELSE NULL END) AS electricbike_ride,
COUNT (CASE WHEN rideable_type = 'docked_bike' THEN 1 ELSE NULL END) AS dockedbike_ride
FROM rider_data.rider_data2021