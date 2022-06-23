


-- Adding start_month column 
ALTER TABLE rider_data.rider_data2021
ADD start_month varchar 

--Using to_char function to get month name from the timestamps of started_at column
UPDATE rider_data.rider_data2021
SET start_month = TRIM(TO_CHAR (started_at, 'Month'))

-- Adding day_of_week column
ALTER TABLE rider_data.rider_data2021
ADD day_of_Week varchar

--Using to_char function to get day name from the timestamps of started_at column
UPDATE rider_data.rider_data2021
SET day_of_week = TRIM (TO_CHAR (started_at, 'Day'))

