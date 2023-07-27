# one_and_done
Data Security Project 

These 4 folders include all the information that is needed for the one and done project in Data Security. The first folder includes all the code that is involved in creating the database. Second folder includes the database itself with the backup file incase something happens. Third folder includes all the additional information that includes the pdf and docx files that describe the objectives, proposals, and evaluating the team members. Finally, the fourth folder includes all the screenshots that encompass all the screenshots present in the report. 

36 sentences below 

EER Diagram:
    - We created the EER diagram through creating all the tables in the model lining the tables up to coherently showcase the relationships highlighted through the foreign keys. 

DDL Schema:
    - Next we laid out the different tables to conceputalize the different type and descriptions for each column. 

Creating tables:
    - The create_tables sql file creates the database and sets all the columns for the eight tables.
    - Five of the tables have one column eash that satisfy the five specific conditions set for validation rules. 
    - The first table student satisfies the validation rule collection of allowed values checking whether gender is specifically M, F, or X. 
    - If something else is inserted, it will error out that insert rejecting it.  
    - The second table teachers satisfies the validation rule specific format by checking the phone number against the regexp specificed. 
    - The regular expression matches strings that follow a specific pattern: three digits, a hyphen, three more digits, another hyphen, and finally, four digits creating a phone number.
    - The fifth table exams satisifes the validation rule default value by setting the maximum grade for any exam to be 100. 
    - The sixth table exam_scheduling satisfied the validation rule required field by setting the exam_id as not null.
    - The seventh table results satisfied the validation rule of a range of allowed values checking whether a grade is between 0 and 100.

Inserting data:
    - All inserts into the eight tables are done by the standard style with '' holding any string and numbers typed independently of any ''.
    - The eight table inserts are accomplished later in the audit_logging.sql file because it's created from a trigger.

Queries: 
    - All queries are accomplished by utilizing mutliple tables with inner joins to combine tables utilizing the foreign keys.
    - The one function that we had to look into it was the DAYOFWEEK where one through represent seven correlate to Sunday to Saturday respectfully (https://www.w3schools.com/sql/func_mysql_dayofweek.asp).

Views:
    - All views are accomplished in the same format as was done in previous labs limiting the necessary columns from a table.
    - These views can be useful for statistic purposes or giving a general view to higher adminstation that doesn't need to be aware of additional details. 

Maintaining:
    - In order to maintain our database, we adjusted the results table by adding a column for teacher_id and then deleted the second to last record in the teachers table. 
    - After deleting the record, we had to update the results table by inserting a teacher_id for each record. 
    - Finally, creating a referenntial relationship between the two tables creating a foreign key and then showed the index from the results table to show the new key. 

i. User Authentication and Authorization:  
    - Beginning our security section, we referred to this link to create accounts for authentication and authorization creating accounts and establishing priveleges (https://dev.mysql.com/doc/refman/8.0/en/create-user.html).
    - When creating the accounts for both the students and teachers they are set with password hashes encrypted by sha2 and expire after 180 days. 
    - Next, we granted one user with full administrative and student & teacher privileges as they were needed.
    - Teachers are able to edit exam and exam_scheduling information while students are able to view subjects, exam information, and test results.

ii. Access Control: 
    - In order to implement access_control we created three MySQL users (Teacher1, Principal, and Guidance_Counselor) with specific access privileges and password expiration intervals for different IP addresses. 
    - The teachers have limited access to exam correlated tables, the principal has broader control over classrooms, students, subjects, and exam scheduling, and the guidance counselor only have access to student correlated information.

iii. Data Encryption:
    - We were able to secure the database through implementing sha256 using the UNHEX() function for the student's contact_number column as that data shouldn't be known to individuals outside of the database admin team.

iv. Auditing and Logging: 
    - In order to implement audit logs, we created a trigger that inserts into the audit_logs table after an insert is completed into the students table logging the new student. 

v. Database Backup and Recovery:
    - In order to implement a backup and recovery, we utilized the mysqldump command to create a new backup of the database.
    - After storing the backup in our folder under testsss.sql, we deleted the database to clear the original.
    - Then we restored the database running a select all on the students table to show that all data was restored. 

vi. Secure Data Transfer: 
    - In order to implement secure data transfer we encrypted the connection through creating a SSL user. 
    - This restricts all user accounts by limiting them to only connect to the database over SSL.
    - We utilzied SSL as it's a protocol for encrypting Internet traffic and verifying server identity. 

vii. Security Training and Best Practices: 
    - Follwing through this link that lists the 8 security common threats and best practices, we were able to implement some of these practices in the user authentican and authorization as well as access control files (https://satoricyber.com/mysql-security/mysql-security-common-threats-and-8-best-practices/). 
    - The practices that we were able to implement in the two files are restricting passwords from being able to print as plain text, encrypting passwords, passwords expire after 180 days, and any user can only connect to the database from a specific location. 