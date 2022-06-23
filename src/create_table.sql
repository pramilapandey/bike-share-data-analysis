CREATE TABLE rider_data.rider_data2021
(
    ride_id varchar(255),
rideable_type varchar(30),
started_at timestamp,
ended_at timestamp,
start_station_name varchar(100),
start_station_id varchar(50),
end_station_name varchar(100),
end_station_id varchar(50),
start_lat float,
start_lng float,
end_lat float,
end_lng float,
member_casual varchar(50)
)
;

ALTER TABLE IF EXISTS rider_data.rider_data2021
    OWNER to user2;