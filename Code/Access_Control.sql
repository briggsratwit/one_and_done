SET print_identified_with_as_hex = ON;
CREATE USER IF NOT EXISTS 'Teacher1'@'10.149.177.198'
	IDENTIFIED WITH caching_sha2_password BY '4I8MLhh#fD2x'
    PASSWORD EXPIRE INTERVAL 180 DAY;
GRANT SELECT, INSERT, UPDATE
    ON exam_scheduling.*
    TO 'Teacher1'@'10.149.177.198';
GRANT SELECT, INSERT, UPDATE
    ON exams.*
    TO 'Teacher1'@'10.149.177.198';
GRANT SELECT, INSERT, UPDATE
    ON results.*
    TO 'Teacher1'@'10.149.177.198';
GRANT SELECT
	ON students.*
    TO 'Teacher1'@'10.149.177.198';
CREATE USER IF NOT EXISTS 'Principal'@'10.149.177.100'
	IDENTIFIED WITH caching_sha2_password BY 'F@3hxG53X&vY'
    PASSWORD EXPIRE INTERVAL 180 DAY;
GRANT SELECT
    ON results.*
    TO 'Principal'@'10.149.177.100';
GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP
	ON classrooms.*
    TO 'Principal'@'10.149.177.100';
GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP
	ON students.*
    TO 'Principal'@'10.149.177.100';
GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP
	ON subjects.*
    TO 'Principal'@'10.149.177.100';
GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP
	ON teachers.*
    TO 'Principal'@'10.149.177.100';
GRANT SELECT
	ON exam_scheduling.*
    TO 'Principal'@'10.149.177.100';
GRANT SELECT
	ON exams.*
    TO 'Principal'@'10.149.177.100';
CREATE USER IF NOT EXISTS 'Guidance_Counselor'@'10.149.177.56'
	IDENTIFIED WITH caching_sha2_password BY '!gMjyD8z3v0b'
    PASSWORD EXPIRE INTERVAL 180 DAY;
GRANT SELECT, INSERT, UPDATE, DELETE 
	on students.*
    TO 'Guidance_Counselor'@'10.149.177.56';
GRANT SELECT 
	on classrooms.*
    TO 'Guidance_Counselor'@'10.149.177.56';
GRANT SELECT 
	on results.*
    TO 'Guidance_Counselor'@'10.149.177.56';
GRANT SELECT 
	on subjects.*
    TO 'Guidance_Counselor'@'10.149.177.56';
    
-- Checking this worked  
SELECT user, host, plugin FROM mysql.user;
SHOW GRANTS FOR 'Teacher1'@'10.149.177.198';
SHOW GRANTS FOR 'Principal'@'10.149.177.100';
SHOW GRANTS FOR 'Guidance_Counselor'@'10.149.177.56';