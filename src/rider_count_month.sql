WITH temp_member AS (
SELECT
CASE WHEN member_casual = 'member' THEN 'member' ELSE 'casual' END AS member_type,
COUNT (CASE WHEN member_casual = 'member' THEN 1 ELSE NULL END) AS num_of_members,
COUNT (CASE WHEN member_casual = 'casual' THEN 1 ELSE NULL END) AS num_of_casuals,
start_month
FROM rider_data.rider_data2021
GROUP BY start_month, member_casual 
ORDER BY EXTRACT(MONTH FROM TO_DATE(start_month, 'Month'))
) 
SELECT member_type,
CASE WHEN num_of_members =0 THEN num_of_casuals ELSE num_of_members END AS member_count,
start_month
FROM temp_member;