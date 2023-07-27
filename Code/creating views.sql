CREATE VIEW StudentsData AS
SELECT student_id, first_name, last_name, email_address
FROM students;

CREATE VIEW TeacherssData AS
SELECT teacher_id, first_name, last_name, email_address
FROM teachers;

CREATE VIEW StudentResults AS
SELECT r.result_id, s.first_name, s.last_name, sb.subject_name, r.grade, r.letter_grade
FROM results r
JOIN students s ON r.student_id = s.student_id
JOIN subjects sb ON r.subject_id = sb.subject_id;

CREATE VIEW ClassroomDetails AS
SELECT c.classroom_id, c.classroom_type, c.classroom_number, c.building_name, c.building_number, t.first_name AS teacher_first_name, t.last_name AS teacher_last_name
FROM classrooms c
LEFT JOIN teachers t ON c.teacher_id = t.teacher_id;

select * from studentsdata;
select * from teacherssdata;
select * from studentresults;
select * from classroomdetails;