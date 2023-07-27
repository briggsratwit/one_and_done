--Displays hashed passwords in hex format
SET print_identified_with_as_hex = ON;

-- Create a MySQL user Teacher1 with caching_sha2_password authentication and set a password expiration interval of 180 days for the IP address '10.149.177.198'.
CREATE USER IF NOT EXISTS 'Teacher1'@'10.149.177.198' IDENTIFIED WITH caching_sha2_password BY '4I8MLhh#fD2x' PASSWORD EXPIRE INTERVAL 180 DAY;

-- Grant privileges on specific tables in the exam_scheduling, exams, results, and students tables to Teacher1.
GRANT SELECT, INSERT, UPDATE ON exam_scheduling.* TO 'Teacher1'@'10.149.177.198';
GRANT SELECT, INSERT, UPDATE ON exams.* TO 'Teacher1'@'10.149.177.198';
GRANT SELECT, INSERT, UPDATE ON results.* TO 'Teacher1'@'10.149.177.198';
GRANT SELECT ON students.* TO 'Teacher1'@'10.149.177.198';

-- Create a MySQL user Principal with caching_sha2_password authentication and set a password expiration interval of 180 days for the IP address '10.149.177.100'.
CREATE USER IF NOT EXISTS 'Principal'@'10.149.177.100' IDENTIFIED WITH caching_sha2_password BY 'F@3hxG53X&vY' PASSWORD EXPIRE INTERVAL 180 DAY;

-- Grant privileges on specific tables in the results, classrooms, students, subjects, teachers, exam_scheduling, and exams tables to Principal.
GRANT SELECT ON results.* TO 'Principal'@'10.149.177.100';
GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP 	ON classrooms.* TO 'Principal'@'10.149.177.100';
GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP 	ON students.* TO 'Principal'@'10.149.177.100';
GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP 	ON subjects.* TO 'Principal'@'10.149.177.100';
GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP 	ON teachers.* TO 'Principal'@'10.149.177.100';
GRANT SELECT ON exam_scheduling.* TO 'Principal'@'10.149.177.100';
GRANT SELECT ON exams.* TO 'Principal'@'10.149.177.100';

-- Create a MySQL user Guidance_Counselor with caching_sha2_password authentication and set a password expiration interval of 180 days for the IP address '10.149.177.56'.
CREATE USER IF NOT EXISTS 'Guidance_Counselor'@'10.149.177.56' 	IDENTIFIED WITH caching_sha2_password BY '!gMjyD8z3v0b' PASSWORD EXPIRE INTERVAL 180 DAY;

-- Grant privileges on specific tables in the students, classrooms, results, and sbujects tables to Guidance_Counselor.
GRANT SELECT, INSERT, UPDATE, DELETE on students.* TO 'Guidance_Counselor'@'10.149.177.56';
GRANT SELECT on classrooms.* TO 'Guidance_Counselor'@'10.149.177.56';
GRANT SELECT on results.* TO 'Guidance_Counselor'@'10.149.177.56';
GRANT SELECT on subjects.* TO 'Guidance_Counselor'@'10.149.177.56';
    
-- Check the user, host, and plugin for each MySQL user as well as privileges granted.
SELECT user, host, plugin FROM mysql.user;
SHOW GRANTS FOR 'Teacher1'@'10.149.177.198';
SHOW GRANTS FOR 'Principal'@'10.149.177.100';
SHOW GRANTS FOR 'Guidance_Counselor'@'10.149.177.56';