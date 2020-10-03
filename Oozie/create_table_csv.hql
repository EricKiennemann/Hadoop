CREATE EXTERNAL TABLE IF NOT EXISTS erick_drivers_csv
 (driverId INT,name STRING,ssn STRING,location STRING,certified STRING,wageplan STRING)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION '/user/k.eric-dsti/drivers'
tblproperties ("skip.header.line.count"="1");
