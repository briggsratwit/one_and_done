-- different commands that were used in the console to backup the database

-- access the database path on local device or server and create the backup 
mysqldump -u root -p one_and_done > testsss.sql 

-- showing the database one_and_done still present, dropping it, and creating it
show databases;
drop database one_and_done;
create database one_and_done;

-- runs all commands against the database selected
use one_and_done;

-- this returns nothing as haven't loaded backup database
show tables from one_and_done;

-- confirming the database was successfully restored
show databases;
show tables from one_and_done;