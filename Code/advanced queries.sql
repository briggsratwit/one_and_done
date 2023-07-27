-- Advanced Query 1 
-- Retrieve the student's id, teacher's id, subjects, and exams_id whose grade is greater or equal to 80
SELECT r.student_id, s.teacher_id, r.exam_id, s.subject_name, r.grade
FROM results r
INNER JOIN subjects s ON r.subject_id = s.subject_id
WHERE grade >= 80;

-- Advanced Query 2 
-- Retrieve the teacher's id, classrooms, and exams_id that are taking place on the last day of exams
SELECT e.exam_id, c.classroom_number, c.teacher_id
FROM exams e
INNER JOIN classrooms c ON c.classroom_id = e.classroom_id
WHERE e.exam_date = (SELECT MAX(exam_date) FROM exams)
GROUP BY e.exam_id, c.classroom_number, c.teacher_id;

-- Advanced Query 3
-- Retrieve the exam_id, classroom_room, start_time, and end_time for the final 5 exams
SELECT e.exam_id, c.classroom_number, es.start_time, es.end_time
FROM exams e
INNER JOIN classrooms c ON c.classroom_id = e.classroom_id
INNER JOIN exam_scheduling es ON es.exam_id = e.exam_id
ORDER BY e.exam_date DESC
LIMIT 5;

-- Advanced Query 4 
-- Retrieve the subject_name, teacher_id, grade, and pass_grade for all students whose grade is lower or equal to 50
SELECT s.subject_name, s.teacher_id, r.grade, e.pass_grade
FROM results r
INNER JOIN subjects s ON r.subject_id = s.subject_id
INNER JOIN exams e ON e.exam_id = r.exam_id
WHERE grade <= 50;

-- Advanced Query 5
-- Retrieve the exam_id, subject_name, and exam_date for all teachers holding an exam on Wedneday
SELECT e.exam_id, s.subject_name , e.exam_date
FROM subjects s
INNER JOIN classrooms c ON c.subject_id = s.subject_id
INNER JOIN exams e ON e.classroom_id = c.classroom_id
WHERE DAYOFWEEK(e.exam_date) = 4;

-- Advanced Query 6
-- Retrieve the count of distinct students, building_name and building_number for exams held in each classroom 
SELECT COUNT(DISTINCT r.student_id) AS student_count, c.building_name, c.building_number
FROM classrooms c
INNER JOIN exams e ON c.classroom_id = e.classroom_id
INNER JOIN results r ON e.exam_id = r.exam_id
GROUP BY c.building_name, c.building_number;

-- Advanced Query 7
-- Retriece the student_id, subject_name, and grade for all exams that were 75 minutes
SELECT r.student_id, s.subject_name , r.grade
FROM results r
INNER JOIN classrooms c ON c.subject_id = r.subject_id
INNER JOIN subjects s ON r.subject_id = s.subject_id
INNER JOIN exams e ON e.classroom_id = c.classroom_id
WHERE exam_duration_minutes = 75;

-- Advanced Query 8 
-- Retrieve all exam_id, subject_name, and classroom_number for all exams that begin before 1 pm
SELECT es.exam_id, s.subject_name, c.classroom_number
FROM exam_scheduling es
INNER JOIN classrooms c ON es.classroom_id = c.classroom_id
INNER JOIN subjects s ON c.subject_id = s.subject_id
WHERE es.start_time  < '13:00:00';
--