-- Insert into students table
INSERT INTO students (student_id, first_name, last_name, date_of_birth, gender, contact_number, email_address)
VALUES
(1, 'John', 'Smith', '1998-05-10', 'M', '781-567-3686', 'john.smith@gmail.com'),
(2, 'Emily', 'Johnson', '1999-09-14', 'F', '987-654-2647', 'emily.johnson@gmail.com'),
(3, 'Michael', 'Anderson', '2000-03-25', 'M', '555-124-7473', 'michael.anderson@gmail.com'), 
(4, 'Sarah', 'Davis', '1997-11-03', 'F', '642-645-7777', 'sarah.davis@gmail.com'),
(5, 'Daniel', 'Ye', '1998-07-18', 'X', '444-335-7462',  'daniel.ye@gmail.com'), 
(6, 'Olivia', 'Dowing', '1999-01-05', 'F', '467-346-2765', 'olivia.dowing@gmail.com'), 
(7, 'Ethan', 'Wilson', '2001-02-20', 'M', '553-674-2674', 'ethan.wilson@gmail.com'), 
(8, 'Autumn', 'Robin', '1998-08-29', 'X', '666-364-3745', 'autumn.robin@gmail.com'),
(9, 'Valentine', 'Brown', '1997-06-12', 'F', '111-653-3657', 'valentine.brown@gmail.com'), 
(10, 'Veronica', 'White', '2000-12-01', 'F', '346-746-2564', 'veronica.white@gmail.com'),
(11, 'Erin', 'Harris', '1999-04-08', 'X', '925-463-2556', 'erin.harris@gmail.com'), 
(12, 'Maddie', 'Miara', '2001-10-23', 'F', '557-452-3646', 'maddie.miara@gmail.com'), 
(13, 'Ellie', 'Briggs', '1998-03-17', 'F', '326-467-8539', 'ellie.briggs@gmail.com'), 
(14, 'Mint', 'Green', '2000-07-05', 'X', '253-676-4673', 'mint.green@gmail.com'), 
(15, 'Nick', 'Lewis', '1997-09-30', 'M', '325-643-2657', 'nick.lewis@gmail.com');

-- Insert into teachers table
INSERT INTO teachers (teacher_id, first_name, last_name, gender, contact_number, email_address)
VALUES
(31, 'Neri', 'Trebor', 'X', '463-654-2456', 'neri.trebor@gmail.com'),
(32, 'Alex', 'Wilson', 'M', '467-343-7867', 'alex.wilson@gmail.com'),
(33, 'Ryan', 'Davis', 'M', '345-465-3564', 'ryan.davis@gmail.com'), 
(34, 'Ashley', 'Miller', 'F', '156-678-2356', 'ashley.miller@gmail.com'),
(35, 'Paige', 'Brown', 'F', '347-765-2454',  'paige.brown@gmail.com'), 
(36, 'Maura', 'Jackson', 'F', '234-545-3573', 'maura.jackson@gmail.com'), 
(37, 'Korro', 'White', 'F', '365-576-2334', 'korro.white@gmail.com'), 
(38, 'Aang', 'Thomas', 'M', '564-467-2334', 'aang.thomas@gmail.com'),
(39, 'Katara', 'Taylor', 'F', '415-163-6746', 'katara.taylor@gmail.com'), 
(40, 'Toph', 'Campbell', 'X', '245-576-2345', 'toph.campbell@gmail.com'),
(41, 'Sokka', 'Lawson', 'M', '456-768-2353', 'sokka.lawson@gmail.com'), 
(42, 'Patrick', 'Star', 'M', '575-345-2398', 'patrick.star@gmail.com'), 
(43, 'Steven', 'Reynolds', 'X', '245-756-2123', 'steven.reynolds@gmail.com'), 
(44, 'Reba', 'Jenkins', 'X', '766-454-3464', 'reba.jenkins@gmail.com'), 
(45, 'Steven', 'Foster', 'M', '575-453-4657', 'steven.foster@gmail.com');

-- Insert into the subjects table 
INSERT INTO subjects (subject_id, subject_name, subject_code, meet_Day, time_start, time_end, teacher_id)
VALUES
(61, 'Macroeconomics', 3152, 'M/W', '08:00:00', '09:30:00', 31),
(62, 'Databases', 2350, 'T/Th', '09:00:00', '10:30:00', 36),
(63, 'Algorithms', 2600, 'M/W', '10:00:00', '11:30:00', 32),
(64, 'English_I', 1000, 'T/Th', '11:00:00', '12:30:00', 36), 
(65, 'Microeconomics', 3153, 'W/F', '12:00:00', '13:30:00', 31), 
(66, 'Biology_I', 2000, 'M/W', '13:00:00', '14:30:00', 33), 
(67, 'English_II', 1500, 'W/F', '14:00:00', '15:30:00', 41), 
(68, 'Calc_II', 1850, 'W/F', '15:00:00', '16:30:00', 37), 
(69, 'Calc_I', 1750, 'T/Th', '16:00:00', '17:30:00', 33),
(70, 'Physics_I', 1150, 'T/Th', '17:00:00', '18:30:00', 45),
(71, 'Precalc', 1250, 'M/F', '11:30:00', '13:00:00', 37),
(72, 'Biology_II', 2300, 'M/F', '14:30:00', '16:00:00', 40),
(73, 'Business_I', 1450, 'T/F', '10:30:00', '12:00:00', 41),
(74, 'Statistics', 2160, 'M/F', '09:30:00', '11:00:00', 45),
(75, 'Business_II', 1960, 'Th/F', '08:00:00', '09:30:00', 42); 

-- Insert into the classrooms table 
INSERT INTO classrooms (classroom_id, classroom_type, classroom_number, building_name, building_number, teacher_id, subject_id)
VALUES
(91, 'Lec', 621, 'Evans', 578, 41, 73),
(92, 'Lab', 672, 'Fenway', 520, 45, 70),
(93, 'Lab', 639, 'Fenway', 520, 36, 64),
(94, 'Lec', 656, 'Milton', 546, 40, 72), 
(95, 'Lec', 692, 'Ruggles', 592, 37, 68), 
(96, 'Lec', 605, 'Evans', 578, 33, 66), 
(97, 'Lab', 618, 'Fenway', 520, 32, 63), 
(98, 'Lec', 660, 'Evans', 578, 42, 75), 
(99, 'Lab', 687, 'Fenway', 520, 45, 74),
(100, 'Lab', 629, 'Ruggles', 592, 36, 62),
(101, 'Lec', 675, 'Milton', 546, 31, 61),
(102, 'Lec', 647, 'Evans', 578, 37, 71),
(103, 'Lab', 614, 'Fenway', 520, 31, 65),
(104, 'Lec', 633, 'Evans', 578, 33, 69),
(105, 'Lab', 685, 'Fenway', 520, 41, 67); 

-- Insert into the exams table 
INSERT INTO exams (exam_id, exam_date, exam_duration_minutes, pass_grade, classroom_id)
VALUES
(121, '2023-07-31', 60, 70, 99), 
(122, '2023-08-03', 90, 90, 98),
(123, '2023-08-04', 120, 85, 104), 
(124, '2023-08-01', 75, 85, 105),
(125, '2023-07-03', 90, 80, 91), 
(126, '2023-08-02', 90, 75, 93), 
(127, '2023-08-02', 60, 80, 94), 
(128, '2023-08-01', 75, 90, 92), 
(129, '2023-08-04', 90, 90, 95), 
(130, '2023-07-31', 60, 75, 101), 
(131, '2023-07-31', 75, 80, 97), 
(132, '2023-08-01', 60, 80, 102), 
(133, '2023-08-02', 75, 85, 96), 
(134, '2023-08-03', 90, 90, 103), 
(135, '2023-08-04', 120, 70, 100);

-- Insert into the exams_schedule table 
INSERT INTO exam_scheduling (schedule_id, start_time, end_time, exam_id, classroom_id, teacher_id)
VALUES
(151, '09:00:00', '10:00:00', 121, 99, 45), 
(152, '09:00:00', '10:30:00', 122, 98, 42),
(153, '14:00:00', '16:00:00', 123, 104, 33), 
(154, '11:00:00', '12:15:00', 124, 105, 41),
(155, '10:00:00', '11:30:00', 125, 91, 41), 
(156, '13:00:00', '14:30:00', 126, 93, 36), 
(157, '13:00:00', '14:00:00', 127, 94, 40), 
(158, '14:45:00', '16:00:00', 128, 92, 45), 
(159, '13:00:00', '14:30:00', 129, 95, 37), 
(160, '11:00:00', '12:00:00', 130, 101, 31), 
(161, '10:30:00', '11:45:00', 131, 97, 32), 
(162, '12:00:00', '13:00:00', 132, 102, 37), 
(163, '13:30:00', '14:45:00', 133, 96, 33), 
(164, '09:30:00', '11:00:00', 134, 103, 31), 
(165, '10:00:00', '12:00:00', 135, 100, 36);

-- Insert into the results table 
INSERT INTO results (result_id, grade, letter_grade, student_id, exam_id, subject_id)
VALUES
(181, 80, 'B-', 1, 121, 74), 
(182, 30, 'F', 2, 122, 75),
(183, 50, 'F', 3, 123, 69), 
(184, 75, 'C', 7, 124, 67),
(185, 80, 'B-', 3, 125, 73), 
(186, 45, 'F', 6, 126, 64), 
(187, 30, 'F', 6, 127, 72), 
(188, 100, 'A', 8, 128, 70), 
(189, 80, 'B-', 15, 129, 68), 
(190, 90, 'A-', 8, 130, 61), 
(191, 84, 'B', 11, 131, 63), 
(192, 50, 'F', 14, 132, 71), 
(193, 95, 'A', 2, 133, 66), 
(194, 78, 'C+', 14, 134, 65), 
(195, 88, 'B+', 15, 135, 62);