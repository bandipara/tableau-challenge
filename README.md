# Tableau - Citi Bike Analytics

## Project Link: https://public.tableau.com/profile/bhargav6508#!/vizhome/Citi_Bike_15911516156260/Dashboard1

## Technology: Tableau Desktop, Tableau Public, Microsoft SQL Server, Excel

#### Data Source(New York City): 
Data was downloaded as CSV files from citi bike website for Ney York City.
https://www.citibikenyc.com/system-data

#### Created a Database and Table
Created a Data base and a table in MS SQ Server:

```sql
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
  ```

#### Import Data
Imported CSV files as flat files into multiple Tables.

#### Merge all Data in CityBikeData Table
Merged all the data into multiple tables into CityBike Data Table.

```sql
Insert into dbo.citybikedata (
		[BIKEID]
      ,[TRIPDURATION]
      ,[STARTTIME]
      ,[STOPTIME]
      ,[START_STATION_ID]
      ,[START_STATION_NAME]
      ,[START_STATION_LATITUDE]
      ,[START_STATION_LONGITUDE]
      ,[END_STATION_ID]
      ,[END_STATION_NAME]
      ,[END_STATION_LATITUDE]
      ,[END_STATION_LONGITUDE]
      ,[USERTYPE]
      ,[BIRTH_YEAR]
      ,[GENDER])

	  Select 
	  [_bikeid_]
	  ,[_tripduration_]
      ,[_starttime_]
      ,[_stoptime_]
      ,[_start_station_id_]
      ,[_start_station_name_]
      ,[_start_station_latitude_]
      ,[_start_station_longitude_]
      ,[_end_station_id_]
      ,[_end_station_name_]
      ,[_end_station_latitude_]
      ,[_end_station_longitude_]
      
      ,[_usertype_]
      ,[_birth_year_]
      ,[_gender_]
	  from [dbo].[201907-citibike-tripdata]
```


