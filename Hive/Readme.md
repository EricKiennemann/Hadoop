# Hive Lab - pipeline to transform a csv file to an ORC file

### create a drivers folder in hdfs home
	hdfs dfs -mkdir drivers
### get the driver.csv in our drivers folder
	hdfs dfs -cp /data/drivers/drivers.csv drivers
### connect to Hive (using beeline)
beeline -u "jdbc:hive2://zoo-1.au.adaltas.cloud:2181,zoo-2.au.adaltas.cloud:2181,zoo-3.au.adaltas.cloud:2181/dsti;serviceDiscoveryMode=zooKeeper;zooKeeperNamespace=hiveserver2;"
### conect to training schema
	use dsti_2020_fall_1;
### create both tables as external erick_drivers_csv, erick_drivers_orc
* retrieve dtastructure from csv file

	driverId,name,ssn,location,certified,wage-plan
	
	10,George Vetticaden,621011971,244-4532 Nulla Rd.,N,miles

CREATE EXTERNAL TABLE IF NOT EXISTS erick_drivers_csv
 (driverId INT,name STRING,ssn STRING,location STRING,certified STRING,wageplan STRING)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION '/user/k.eric-dsti/drivers'
tblproperties ("skip.header.line.count"="1");


create table erick_drivers_orc (driverId INT,name STRING,ssn STRING,location STRING,certified STRING,wageplan STRING)
row format delimited fields terminated by ',' 
STORED AS orc
LOCATION 'drivers_orc';


### check your csv table - select with limit ";" at the end
SELECT * FROM erick_drivers_csv LIMIT 5;

### populate the orc table
INSERT INTO TABLE erick_drivers_orc SELECT * FROM erick_drivers_csv;

### put command inside a sql/hql script and run this script
	in the beeline prompt :
	!run sql/selectCSVfile.sql
	the sql script is in the edge server

### Sql queries on hive

	* look at the structure
		
imdb_name_basics
imdb_title_basics
imdb_title_crew
imdb_title_ratings


Write queries for the following:

1) Number of titles with duration superior than 2 hours.
		
2) Average duration of titles containing the string "world".
		
3) Average rating of titles having the genre "Comedy".
	
4) Average rating of titles not having the genre "Comedy".
	
5) Top 5 movies by rating with director Quentin Tarantino
