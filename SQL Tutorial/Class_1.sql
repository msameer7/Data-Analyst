CREATE DATABASE College; 

USE College;

CREATE TABLE student (
rollno INT PRIMARY KEY,
name VARCHAR(20),
age INT NOT NULL
);

INSERT INTO student VALUES(1, "M.Sameer", 22); -- for single student entry.
INSERT INTO student VALUES(2, "Rafay", 23);

INSERT INTO student -- for multiple student entries.
(rollno, name, age)
VALUES
(3, "Abid", 21),
(4, "Sami", 22);


-- SELECT * FROM Student;





