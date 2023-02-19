#Download the backup file
wget https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0231EN-SkillsNetwork/labs/Final%20Assignment/billingdata.sql

#Create a new database
create database billing;
use billing;

#complete the database
source billingdata.sql;

#List the tables
SHOW TABLES;

#Find the data size of the table billdata
SELECT table_name,(data_length+index_length) as `Data Size in bytes` from information_schema.tables where table_name='billdata';

#query to select all rows with a billedamount > 19999 in table billdata
SELECT * from billdata where billedamount > 19999;

#Create an index
#CREATE index billingamount ON billdata(billedamount);
ALTER TABLE billdata add index `billedamount_index` (billedamount);

#Re-run the baseline query after create an index
SELECT * from billdata where billedamount > 19999;
#query time become 0.00

#Find supported storage engines
SHOW EINGINES;

#Find the storage engine of a table
SHOW TABLE STATUS WHERE Name="billdata';

