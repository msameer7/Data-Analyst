CREATE DATABASE school_db;
USE school_db;

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(30)
);

INSERT INTO students (student_id, name) VALUES
(1, 'Sameer'),
(2, 'Ali'),
(3, 'Zara'),
(4, 'Ahmed'),
(5, 'Fatima');

CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    student_id INT,
    course_name VARCHAR(30),
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);

INSERT INTO students (student_id, name)
VALUES (6, 'Mansoor');

INSERT INTO courses (course_id, student_id, course_name)
VALUES
  (101, 1, 'Math'),
  (102, 2, 'Science'),
  (103, 3, 'English'),
  (104, 4, 'Physics'),  -- Replace with existing student_id
  (105, 2, 'Computer');

SELECT * FROM students;
SELECT * FROM courses;


-- INNER JOIN

SELECT s.student_id, s.name, c.course_name
FROM students s
INNER JOIN courses c ON s.student_id = c.student_id; 


-- LEFT JOIN

SELECT s.student_id, s.name, c.course_name
FROM students s
LEFT JOIN courses c ON s.student_id = c.student_id;

-- RIGHT JOIN

SELECT s.student_id, s.name, c.course_name
FROM students s
RIGHT JOIN courses c ON s.student_id = c.student_id;

-- FULL OUTER JOIN (SINCE MY SQL DOESN'T SUPPORT IT DIRECTLY), WE can Simulate a FULL JOIN USING UNION

SELECT s.student_id, s.name, c.course_name
FROM students s
LEFT JOIN courses c ON s.student_id = c.student_id

UNION

SELECT s.student_id, s.name, c.course_name
FROM students s
RIGHT JOIN courses c ON s.student_id = c.student_id;
 



