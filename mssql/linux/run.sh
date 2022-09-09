# runs container on port 1433 with mounted volume from local disk
docker run -d -p 1433:1433 --name mssql -e MSSQL_SA_PASSWORD=Djs0sulk@4SV -e ACCEPT_EULA=Y mssql

# mount volume
# -v C:/Users/%username%/Documents/docker/mssql/:C:/temp/
# attach DB
# -e attach_dbs="[{'dbName':'SampleDB','dbFiles':['C:\\temp\\sampledb.mdf','C:\\temp\\sampledb_log.ldf']}]"
