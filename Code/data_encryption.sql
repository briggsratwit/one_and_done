-- Shows all the columns in the students table before the encryption.
select * from students;

-- Modify the contact_number column in students table to be a VARCHAR with a maximum length of 20 characters. 
-- Updates all the values in the column by hashing each value using the SHA-256 algorithm and converting the resulting hash to binary form using the UNHEX() function.
ALTER TABLE students MODIFY contact_number VARCHAR(20);
UPDATE students
SET contact_number = UNHEX(SHA2(contact_number, 256));

-- Shows all the columns in the students table after the encryption.
select * from users;