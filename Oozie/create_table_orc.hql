create table erick_drivers_orc (driverId INT,name STRING,ssn STRING,location STRING,certified STRING,wageplan STRING)
row format delimited fields terminated by ',' 
STORED AS orc
LOCATION 'drivers_orc';