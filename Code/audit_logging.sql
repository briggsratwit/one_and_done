DROP TRIGGER IF EXISTS students_login;

-- Data Entry for Audit

CREATE TRIGGER students_login
AFTER INSERT ON students
FOR EACH ROW

        INSERT INTO audit_logs (event_type, timestamp, user, table_name, description)
        VALUES ('log in', NOW(), NEW.student_id, 'students', 'Student information updated');