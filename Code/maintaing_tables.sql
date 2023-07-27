-- In order to maintain our database, we adjusted the results table by adding a column for teacher_id and then deleted the second to last record in the teachers table. 
-- After deleting the record, we had to update the results table by inserting a teacher_id for each record. 
-- Finally, creating a referenntial relationship between the two tables creating a foreign key and then showed the index from the results table to show the new key. 

-- Inserting new field
ALTER TABLE results
ADD COLUMN teacher_id INT NOT NULL;
select * from results;

-- Deleting a record
DELETE FROM teachers
WHERE teacher_id = 44;
select * from teachers;

-- Changing the data for the referential relationship 
UPDATE results
SET teacher_id = CASE 
    WHEN exam_id = 121 THEN 45
    WHEN exam_id = 122 THEN 42
    WHEN exam_id = 123 THEN 33
    WHEN exam_id = 124 THEN 41
    WHEN exam_id = 125 THEN 41
	WHEN exam_id = 126 THEN 36
    WHEN exam_id = 127 THEN 40
    WHEN exam_id = 128 THEN 45
    WHEN exam_id = 129 THEN 37
    WHEN exam_id = 130 THEN 31
    WHEN exam_id = 131 THEN 32
    WHEN exam_id = 132 THEN 37
    WHEN exam_id = 133 THEN 33
    WHEN exam_id = 134 THEN 31
    WHEN exam_id = 135 THEN 36
    ELSE teacher_id
    END
WHERE exam_id IN (121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135);
select * from results;

-- Creating a referential relationship between the two tables
ALTER TABLE results
ADD CONSTRAINT maintain_teacher
FOREIGN KEY (teacher_id) REFERENCES teachers(teacher_id);
SHOW INDEX FROM results;