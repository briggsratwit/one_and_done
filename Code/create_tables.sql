-- The create_tables sql file creates the database and sets all the columns for the eight tables
-- Five of the tables have one column eash that satisfy the five specific conditions set for validation rules. 
-- The first table student satisfies the validation rule collection of allowed values checking whether gender is specifically M, F, or X. 
-- If something else is inserted, it will error out that insert rejecting it.  
-- The second table teachers satisfies the validation rule specific format by checking the phone number against the regexp specificed. 
-- The regular expression matches strings that follow a specific pattern: three digits, a hyphen, three more digits, another hyphen, and finally, four digits creating a phone number
-- The fifth table exams satisifes the validation rule default value by setting the maximum grade for any exam to be 100. 
--The sixth table exam_scheduling satisfied the validation rule required field by setting the exam_id as not null
--The seventh table results satisfied the validation rule of a range of allowed values checking whether a grade is between 0 and 100.

CREATE DATABASE one_and_done;

CREATE TABLE `one_and_done`.`students` (
  `student_id` INT NOT NULL UNIQUE,
  `first_name` VARCHAR(255) NOT NULL,
  `last_name` VARCHAR(255) NOT NULL,
  `date_of_birth` DATE NOT NULL,
  `gender` CHAR(1) NOT NULL CHECK (gender IN ('M', 'F', 'X')),
  `contact_number` VARCHAR(255) NOT NULL UNIQUE,
  `email_address` VARCHAR(255) NOT NULL UNIQUE,
  PRIMARY KEY (`student_id`)
);

CREATE TABLE `one_and_done`.`teachers` (
 `teacher_id` INT NOT NULL UNIQUE,
  `first_name` VARCHAR(255) NOT NULL,
  `last_name` VARCHAR(255) NOT NULL,
  `gender` CHAR(1) NOT NULL,
  `contact_number` VARCHAR(255) NOT NULL UNIQUE CHECK (contact_number REGEXP '^[0-9]{3}-[0-9]{3}-[0-9]{4}$'),
  `email_address` VARCHAR(255) NOT NULL UNIQUE,
  PRIMARY KEY (`teacher_id`)
);

CREATE TABLE `one_and_done`.`subjects`(
 `subject_id` INT NOT NULL UNIQUE,
  `subject_name` VARCHAR(255) NOT NULL UNIQUE,
  `subject_code` INT NOT NULL,
  `meet_day` VARCHAR(255) NOT NULL,
  `time_start` TIME NOT NULL,
  `time_end` TIME NOT NULL,
  `teacher_id`INT NOT NULL,
  PRIMARY KEY (`subject_id`),
  FOREIGN KEY (`teacher_id`) REFERENCES teachers(`teacher_id`));

CREATE TABLE `one_and_done`.`classrooms`(
  `classroom_id` INT NOT NULL UNIQUE,
  `classroom_type` VARCHAR(255) NOT NULL,
  `classroom_number` INT NOT NULL UNIQUE,
  `building_name` VARCHAR(255) NOT NULL,
  `building_number` INT NOT NULL,
  `teacher_id` INT NOT NULL, 
  `subject_id` INT NOT NULL,
  PRIMARY KEY (`classroom_id`),
  FOREIGN KEY (`teacher_id`) REFERENCES teachers(`teacher_id`),
  FOREIGN KEY (`subject_id`) REFERENCES subjects(`subject_id`)
);

CREATE TABLE `one_and_done`.`exams` (
  `exam_id` INT NOT NULL UNIQUE,
  `exam_date` DATE NOT NULL,
  `exam_duration_minutes` INT NOT NULL,
  `pass_grade` INT NOT NULL,
  `maximum_grade` INT NOT NULL DEFAULT 100,
  `classroom_id` INT NOT NULL,
  PRIMARY KEY (`exam_id`),
  FOREIGN KEY (`classroom_id`) REFERENCES classrooms(`classroom_id`)
);

CREATE TABLE `one_and_done`.`exam_scheduling` (
  `schedule_id` INT NOT NULL UNIQUE,
  `start_time` TIME NOT NULL,
  `end_time` TIME NOT NULL,
  `exam_id` INT NOT NULL,
  `classroom_id` INT NOT NULL, 
  `teacher_id` INT NOT NULL,
  PRIMARY KEY (`schedule_id`),
  FOREIGN KEY (`exam_id`) REFERENCES exams(`exam_id`),
  FOREIGN KEY (`classroom_id`) REFERENCES classrooms(`classroom_id`),
  FOREIGN KEY (`teacher_id`) REFERENCES teachers(`teacher_id`)
);

CREATE TABLE `one_and_done`.`results` (
 `result_id` INT NOT NULL UNIQUE,
  `grade` INT NOT NULL CHECK (grade BETWEEN 0 AND 100),
  `letter_grade` VARCHAR(255) NOT NULL,
  `student_id` INT NOT NULL, 
  `exam_id` INT NOT NULL, 
  `subject_id` INT NOT NULL,
  PRIMARY KEY (`result_id`),
  FOREIGN KEY (`student_id`) REFERENCES students(`student_id`),
  FOREIGN KEY (`exam_id`) REFERENCES exams(`exam_id`),
  FOREIGN KEY (`subject_id`) REFERENCES subjects(`subject_id`)
);

CREATE TABLE `one_and_done`.`audit_logs` (
    `audit_logs_id` INT NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
    `event_type` VARCHAR(50) NOT NULL,
    `timestamp` DATETIME NOT NULL,
    `user` VARCHAR(50) NOT NULL,
    `table_name` VARCHAR(50) NOT NULL,
    `description` VARCHAR(255) NOT NULL
);