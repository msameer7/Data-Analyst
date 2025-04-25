CREATE TABLE studentss (
    student_id INT PRIMARY KEY,
    name VARCHAR(30),
    marks INT,
    grade VARCHAR(2),
    city VARCHAR(25)
);

INSERT INTO studentss (student_id, name, marks, grade, city) VALUES
(1, 'Sameer', 72, 'C', 'Karachi'),
(2, 'Ali', 85, 'B', 'Lahore'),
(3, 'Zara', 91, 'A', 'Islamabad'),
(4, 'Ahmed', 67, 'D', 'Karachi'),
(5, 'Fatima', 88, 'B', 'Hyderabad'),
(6, 'Bilal', 79, 'C', 'Multan'),
(7, 'Ayesha', 95, 'A', 'Faisalabad'),
(8, 'Tariq', 82, 'B', 'Rawalpindi');


SELECT * FROM studentss;

ALTER TABLE studentss
RENAME COLUMN name TO full_name;


SET SQL_SAFE_UPDATES = 0;

DELETE FROM studentss
WHERE marks < 80;

SET SQL_SAFE_UPDATES = 1; -- Optional: turn it back on after deletion

ALTER TABLE studentss
DROP COLUMN grade;
