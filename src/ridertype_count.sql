SELECT 
member_casual AS member_type,
COUNT(*) AS total_number
FROM rider_data.rider_data2021
WHERE member_casual = 'member'
GROUP BY member_type
UNION
SELECT 
member_casual AS member_type,
COUNT(*) AS total_number
FROM rider_data.rider_data2021
WHERE member_casual = 'casual'
GROUP BY member_type
