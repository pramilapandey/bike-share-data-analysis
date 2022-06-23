
WITH temp_table AS(
SELECT member_casual,
COUNT (CASE WHEN rideable_type = 'classic_bike' THEN 1 ELSE NULL END) AS classicbike_ride,
COUNT (CASE WHEN rideable_type = 'electric_bike' THEN 1 ELSE NULL END) AS electricbike_ride,
COUNT (CASE WHEN rideable_type = 'docked_bike' THEN 1 ELSE NULL END) AS dockedbike_ride,
COUNT (*) AS totalbike_ride,
COUNT (CASE WHEN member_casual = 'member' THEN 1 ELSE NULL END) AS num_of_members,
COUNT (CASE WHEN member_casual = 'casual' THEN 1 ELSE NULL END) AS num_of_casuals,
COUNT(*) AS num_of_users
FROM rider_data.rider_data2021
GROUP BY member_casual)
SELECT 
member_casual AS member_type, 
classicbike_ride,electricbike_ride, dockedbike_ride,
CASE WHEN num_of_members = 0 THEN num_of_casuals ELSE num_of_members END AS member_count
FROM temp_table



