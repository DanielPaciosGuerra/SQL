INSERT INTO student VALUE(1, 'Jack', 'Biology');
INSERT INTO student VALUE(2, 'KATE', 'Sociology');
INSERT INTO student(student_id, nombre) VALUE(3, 'Manolo');
SELECT * FROM student;

DROP TABLE student;
CREATE TABLE student(
	student_id INT AUTO_INCREMENT,
    nombre VARCHAR(20) NOT NULL,
    major VARCHAR(20) DEFAULT 'undecised',
    PRIMARY KEY (student_id)
);
INSERT INTO student VALUE(1,'JACK', 'MATHS');
INSERT INTO student(nombre) VALUE('MANOLO');
SELECT * FROM student;

UPDATE student 
SET major = 'Mates' 
WHERE major = 'MATHS';

SELECT * FROM student
ORDER BY student_id DESC;
