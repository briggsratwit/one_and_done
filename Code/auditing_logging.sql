-- Shows all the columns in the audit_logs table before the trigger.
Select * from audit_logs;

-- Creating trigger after an insert into students table inserting into audit log table 
CREATE TRIGGER one_and_done.students_login
AFTER INSERT ON one_and_done.students
FOR EACH ROW

    -- Inserts into audit log the event_type, current timestamp, student id that was just created, table_name, and description 
    INSERT INTO audit_logs (event_type, timestamp, user, table_name, description)
    VALUES ('log in', NOW(), NEW.student_id, 'students', 'Student information updated');

-- INSERT to students table 
INSERT INTO one_and_done.students (student_id, first_name, last_name, date_of_birth, gender, contact_number, email_address)
VALUES
(16, 'Liam', 'Johnson', '1998-05-10', 'M', '555-123-4567', 'Liam.Johnson@gmail.com'),
(17, 'Sophia', 'Martinez', '1999-09-14', 'F', '987-654-3210', 'Sophia.Martinez@gmail.com'),
(18, 'Noah', 'Thompson', '2000-03-25', 'M', '123-456-7890', 'Noah.Thompson@gmail.com'), 
(19, 'Olivia', 'Anderson', '1997-11-03', 'F', '888-555-1212', 'Olivia.Anderson@gmail.com'),
(20, 'Ethan', 'Rodriguez', '1998-07-18', 'X', '555-789-1234',  'Ethan.Rodriguez@gmail.com'), 
(21, 'Emma', 'Williams', '1999-01-05', 'F', '234-567-8901', 'Emma.Williams@gmail.com'), 
(22, 'Jackson', 'Lee', '2001-02-20', 'M', '777-888-9999', 'Jackson.Lee@gmail.com'), 
(23, 'Ava', 'Smith', '1998-08-29', 'X', '555-555-5555', 'Ava.Smith@gmail.com'),
(24, 'Aiden', 'Taylor', '1997-06-12', 'M', '111-222-3333', 'Aiden.Taylor@gmail.com'), 
(25, 'Isabella', 'Brown', '2000-12-01', 'F', '444-555-6666', 'Isabella.Brown@gmail.com'),
(26, 'Lucas', 'Garcia', '1999-04-08', 'X', '777-888-4444', 'Lucas.Garcia@gmail.com'), 
(27, 'Mia', 'Wilson', '2001-10-23', 'F', '123-456-7899', 'Mia.Wilson@gmail.com'), 
(28, 'Caden', 'Davis', '1998-03-17', 'M', '555-444-3333', 'Caden.Davis@gmail.com'), 
(29, 'Harper', 'Thomas', '2000-07-05', 'X', '222-333-4444', 'Harper.Thomas@gmail.com'), 
(30, 'Elijah', 'Hernandez', '1997-09-30', 'M', '999-888-7777', 'Elijah.Hernandez@gmail.com');

-- Shows all the columns in the audit_logs table after the trigger.
Select * from audit_logs;