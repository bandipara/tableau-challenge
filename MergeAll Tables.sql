
------------MERGE ALL TABLES INTO CITYBANKDATA TABLE-----------

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