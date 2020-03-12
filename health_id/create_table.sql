create table travel_alert(
    area varchar(20),
    effective datetime,
    security_level varchar(20),
    instruction varchar(20)
);

load data local infile './TravelAlert.csv'
into table mask
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
ignore 1 lines;