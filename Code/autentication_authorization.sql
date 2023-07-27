-- Account Authentication
 
--Displays hashed passwords in hex format
SET print_identified_with_as_hex = ON;

-- Student account creations
CREATE USER 'john.smith@gmail.com'@'localhost' IDENTIFIED WITH caching_sha2_password BY  '5srgrfvf' PASSWORD EXPIRE INTERVAL 180 DAY;
CREATE USER 'emily.johnson@gmail.com'@'localhost' IDENTIFIED WITH caching_sha2_password BY '345gedsfvn' PASSWORD EXPIRE INTERVAL 180 DAY;
CREATE USER 'michael.anderson@gmail.com'@'localhost' IDENTIFIED WITH caching_sha2_password BY 'hnytrt56se' PASSWORD EXPIRE INTERVAL 180 DAY;
CREATE USER 'sarah.davis@gmail.com'@'localhost' IDENTIFIED WITH caching_sha2_password BY '8grfeavb3' PASSWORD EXPIRE INTERVAL 180 DAY;
CREATE USER 'daniel.ye@gmail.com'@'localhost' IDENTIFIED WITH caching_sha2_password BY '743wgrfsa' PASSWORD EXPIRE INTERVAL 180 DAY;
CREATE USER 'olivia.dowing@gmail.com'@'localhost' IDENTIFIED WITH caching_sha2_password BY 'aEAv56t' PASSWORD EXPIRE INTERVAL 180 DAY;
CREATE USER 'ethan.wilson@gmail.com'@'localhost' IDENTIFIED WITH caching_sha2_password BY '45gredvb5' PASSWORD EXPIRE INTERVAL 180 DAY;
CREATE USER 'autumn.robin@gmail.com'@'localhost' IDENTIFIED WITH caching_sha2_password BY '7btrfed4' PASSWORD EXPIRE INTERVAL 180 DAY;

-- Teacher account creations
CREATE USER 'neri.trebor@gmail.com'@'localhost' IDENTIFIED WITH caching_sha2_password BY 'grfefgvqa4' PASSWORD EXPIRE INTERVAL 180 DAY;
CREATE USER 'alex.wilson@gmail.com'@'localhost' IDENTIFIED WITH caching_sha2_password BY 'szer32g5re' PASSWORD EXPIRE INTERVAL 180 DAY;
CREATE USER 'ryan.davis@gmail.com'@'localhost' IDENTIFIED WITH caching_sha2_password BY 'hbt4ewwrewdsa' PASSWORD EXPIRE INTERVAL 180 DAY;
CREATE USER 'ashley.miller@gmail.com'@'localhost' IDENTIFIED WITH caching_sha2_password BY 'jtrcfes365' PASSWORD EXPIRE INTERVAL 180 DAY;
CREATE USER 'paige.brown@gmail.com'@'localhost' IDENTIFIED WITH caching_sha2_password BY '5fedwsv' PASSWORD EXPIRE INTERVAL 180 DAY;
CREATE USER 'maura.jackson@gmail.com'@'localhost' IDENTIFIED WITH caching_sha2_password BY 'g43dwsgr' PASSWORD EXPIRE INTERVAL 180 DAY;
CREATE USER 'korro.white@gmail.com'@'localhost' IDENTIFIED WITH caching_sha2_password BY 'j6tr45waq23' PASSWORD EXPIRE INTERVAL 180 DAY;

-- Authorizating Users with privileges

-- Administrator privileges
GRANT ALL ON one_and_done.* TO 'neri.trebor@gmail.com'@'localhost';

-- Grant privileges for teachers to edit exam information
GRANT SELECT, INSERT, UPDATE ON one_and_done.exams TO 
'neri.trebor@gmail.com'@'localhost', 
'alex.wilson@gmail.com'@'localhost', 
'ryan.davis@gmail.com'@'localhost', 
'ashley.miller@gmail.com'@'localhost',
'paige.brown@gmail.com'@'localhost',
'maura.jackson@gmail.com'@'localhost',
'korro.white@gmail.com'@'localhost';

-- Grant privileges for teachers to edit exam scheduling information
GRANT SELECT, INSERT, UPDATE ON one_and_done.exam_scheduling TO 
'neri.trebor@gmail.com'@'localhost', 
'alex.wilson@gmail.com'@'localhost', 
'ryan.davis@gmail.com'@'localhost', 
'ashley.miller@gmail.com'@'localhost',
'paige.brown@gmail.com'@'localhost',
'maura.jackson@gmail.com'@'localhost',
'korro.white@gmail.com'@'localhost';

-- Grant privileges for students to view subjects
GRANT SELECT ON one_and_done.subjects TO 
'john.smith@gmail.com'@'localhost', 
'emily.johnson@gmail.com'@'localhost', 
'michael.anderson@gmail.com'@'localhost', 
'sarah.davis@gmail.com'@'localhost',
'daniel.ye@gmail.com'@'localhost',
'olivia.dowing@gmail.com'@'localhost',
'ethan.wilson@gmail.com'@'localhost',
'autumn.robin@gmail.com'@'localhost';

-- Grant privileges for students to view exam information 
GRANT SELECT ON one_and_done.exams TO 
'john.smith@gmail.com'@'localhost', 
'emily.johnson@gmail.com'@'localhost', 
'michael.anderson@gmail.com'@'localhost', 
'sarah.davis@gmail.com'@'localhost',
'daniel.ye@gmail.com'@'localhost',
'olivia.dowing@gmail.com'@'localhost',
'ethan.wilson@gmail.com'@'localhost',
'autumn.robin@gmail.com'@'localhost';

-- Grant privileges for students to view test results
GRANT SELECT ON one_and_done.results TO 
'john.smith@gmail.com'@'localhost', 
'emily.johnson@gmail.com'@'localhost', 
'michael.anderson@gmail.com'@'localhost', 
'sarah.davis@gmail.com'@'localhost',
'daniel.ye@gmail.com'@'localhost',
'olivia.dowing@gmail.com'@'localhost',
'ethan.wilson@gmail.com'@'localhost',
'autumn.robin@gmail.com'@'localhost';

--Reload the grant tables and apply the changes made to the user privileges as well as show various users grants. 
FLUSH PRIVILEGES;
SHOW GRANTS FOR 'neri.trebor@gmail.com'@'localhost';
SHOW GRANTS FOR 'alex.wilson@gmail.com'@'localhost';
SHOW GRANTS FOR 'ryan.davis@gmail.com'@'localhost';
SHOW GRANTS FOR 'ashley.miller@gmail.com'@'localhost';
SHOW GRANTS FOR 'paige.brown@gmail.com'@'localhost';
SHOW GRANTS FOR 'maura.jackson@gmail.com'@'localhost';
SHOW GRANTS FOR 'korro.white@gmail.com'@'localhost';
SHOW GRANTS FOR 'john.smith@gmail.com'@'localhost';
SHOW GRANTS FOR 'emily.johnson@gmail.com'@'localhost';
SHOW GRANTS FOR 'michael.anderson@gmail.com'@'localhost';
SHOW GRANTS FOR 'sarah.davis@gmail.com'@'localhost';
SHOW GRANTS FOR 'daniel.ye@gmail.com'@'localhost';
SHOW GRANTS FOR 'olivia.dowing@gmail.com'@'localhost';
SHOW GRANTS FOR 'ethan.wilson@gmail.com'@'localhost';
SHOW GRANTS FOR 'autumn.robin@gmail.com'@'localhost';