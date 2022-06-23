WITH temp_member AS(
SELECT
member_casual,
COUNT (CASE WHEN member_casual = 'member' THEN 1 ELSE NULL END) AS num_of_members,
COUNT (CASE WHEN member_casual = 'casual' THEN 1 ELSE NULL END) AS num_of_casuals,
COUNT(*) AS total_members,
day_of_week
FROM rider_data.rider_data2021
GROUP BY day_of_week, member_casual

)  
SELECT 
MAX(num_of_members) as num_member,
MAX(num_of_casuals) as num_casual,
day_of_week
FROM temp_member
GROUP BY day_of_week
ORDER BY CASE
          WHEN day_of_week = 'Monday' THEN 0
          WHEN day_of_week = 'Tuesday' THEN 1
          WHEN day_of_week = 'Wednesday' THEN 2
          WHEN day_of_week = 'Thursday' THEN 3
          WHEN day_of_week = 'Friday' THEN 4
          WHEN day_of_week = 'Saturday' THEN 5
          WHEN day_of_week = 'Sunday' THEN 6
     END ASC