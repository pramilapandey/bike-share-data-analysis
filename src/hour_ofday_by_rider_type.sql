
ALTER TABLE rider_data.rider_data2021
ADD hour_day int

UPDATE  rider_data.rider_data2021
SET hour_day = EXTRACT (HOUR from started_at)

WITH temp_table AS(
SELECT hour_day, member_casual,
COUNT (CASE WHEN member_casual = 'member' THEN 1 ELSE NULL END) AS num_of_members,
COUNT (CASE WHEN member_casual = 'casual' THEN 1 ELSE NULL END) AS num_of_casuals,
COUNT(*) AS num_of_users
FROM rider_data.rider_data2021
GROUP BY hour_day, member_casual)
SELECT member_casual, 
CASE WHEN num_of_members = 0 THEN num_of_casuals ELSE num_of_members END AS member_count,
hour_day
FROM temp_table


