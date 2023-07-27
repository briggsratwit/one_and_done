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