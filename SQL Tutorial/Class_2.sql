  CREATE DATABASE NewCollege;
  USE NewCollege;
  
CREATE TABLE student (
  rollno INT PRIMARY KEY,
  name VARCHAR(20),
  marks INT NOT NULL,
  grade VARCHAR(1),
  city VARCHAR(20)
);
  
INSERT INTO student
  (rollno, name, marks, grade, city)
  VALUES
  (101,"sameer",72,"C","Karachi"),
  (105,"sameer",71,"C","Hyderabad"),
  (102,"Mameer",78,"C","Karachi"),
  (104,"sameer",72,"C","Karachi");
  
 SELECT * FROM student
WHERE marks = 71 AND city = 'Hyderabad';

-- SELECT city, AVG(marks) AS average_marks
-- FROM student
-- GROUP BY city
-- ORDER BY average_marks ASC;
   