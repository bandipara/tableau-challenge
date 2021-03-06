
Drop Table CityBikeData
CREATE TABLE CityBikeData(
	--ID INT IDENTITY(1,1),
	BIKEID INT,
	TRIPDURATION INT,	
	STARTTIME DATETIME,
	STOPTIME DATETIME,
	START_STATION_ID INT,
	START_STATION_NAME VARCHAR(255),
	START_STATION_LATITUDE Decimal(9,6),
	START_STATION_LONGITUDE Decimal(9,6),
	END_STATION_ID INT,
	END_STATION_NAME VARCHAR(255),
	END_STATION_LATITUDE Decimal(9,6),
	END_STATION_LONGITUDE Decimal(9,6),
	USERTYPE VARCHAR(255),
	BIRTH_YEAR INT, 
	GENDER INT);