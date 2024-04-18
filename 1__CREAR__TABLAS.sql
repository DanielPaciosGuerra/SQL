CREATE DATABASE prueba_inicial;
CREATE TABLE student(
student_id INT PRIMARY KEY,
nombre VARCHAR(20),
major VARCHAR(20)
);
DESCRIBE student;
ALTER TABLE student ADD gpa DOUBLE(3,2);
DESCRIBE student;
ALTER TABLE student DROP gpa;