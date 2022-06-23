-- First method using filter in average function    
SELECT
AVG(ride_length) FILTER (WHERE member_casual = 'member') AS avg_ride_member,
AVG(ride_length) FILTER (WHERE member_casual = 'casual') AS avg_ride_casual,
day_of_week
FROM rider_data.rider_data2021
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


-- Second method using having clause to filter and using inner join to join two tables
SELECT avg_ride_member, avg_ride_casual, a.day_of_week from
    (SELECT
    AVG(ride_length)AS avg_ride_member,
    day_of_week
    FROM rider_data.rider_data2021
    GROUP BY day_of_week, member_casual
    HAVING member_casual = 'casual') a
JOIN
    (SELECT
    AVG(ride_length)AS avg_ride_casual,
    day_of_week
    FROM rider_data.rider_data2021
    GROUP BY  member_casual, day_of_week
    HAVING member_casual = 'member') b
ON a.day_of_week = b.day_of_week
ORDER BY CASE
          WHEN a.day_of_week = 'Monday' THEN 0
          WHEN a.day_of_week = 'Tuesday' THEN 1
          WHEN a.day_of_week = 'Wednesday' THEN 2
          WHEN a.day_of_week = 'Thursday' THEN 3
          WHEN a.day_of_week = 'Friday' THEN 4
          WHEN a.day_of_week = 'Saturday' THEN 5
          WHEN a.day_of_week = 'Sunday' THEN 6
          END ASC


