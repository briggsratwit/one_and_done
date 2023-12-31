-- Shows all the columns in the students table before the encryption.
select * from students;

-- Modify the contact_number column in students table to be a VARCHAR with a maximum length of 20 characters. 
-- Updates all the values in the column by hashing each value using the SHA-256 algorithm and converting the resulting hash to binary form using the UNHEX() function.
ALTER TABLE students MODIFY email_address VARBINARY(255);
UPDATE students
SET email_address = UNHEX(SHA2(email_address, 256));

-- Shows all the columns in the students table after the encryption.
select * from students;
