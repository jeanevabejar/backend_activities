CREATE TABLE students (
    id             integer                     PRIMARY KEY,
    first_name     character varying(100)         NOT NULL,
    middle_name    character varying(100)        DEFAULT 'Blank',
    last_name     character varying(100)         NOT NULL,
    age             integer                         DEFAULT 0,
    location        character varying(100)         NOT NULL
);
INSERT INTO
    students (
        id,
        first_name,
        last_name,
        age,
        location
    )
VALUES
    (1, 'Juan',  'Cruz', 18, 'Manila'),
    (2, 'Anne',  'Wall', 20, 'Manila'),
    (3, 'Theresa',  'Joseph', 21, 'Manila'),
    (4, 'Issac',  'Gray', 19, 'Laguna'),
    (5, 'Zack',  'Matthews', 22, 'Marikina'),
    (6, 'Finn', 'Lam', 25, 'Manila');

UPDATE students 
SET first_name = 'Ivan', middle_name = 'Igram', last_name = 'Howard', age = 25, location = 'Bulacan'
WHERE id = 1;

DELETE FROM students
WHERE id = 6;

SELECT COUNT(id) FROM students;

SELECT * FROM students
WHERE location = 'Manila';

SELECT AVG(age) FROM students;

SELECT * FROM students ORDER BY age DESC;

SELECT * FROM students;

INSERT INTO students (
        id,
        first_name,
        last_name,
        age,
        location
    )
VALUES (6, 'Finn', 'Lam', 25, 'Manila');


CREATE TABLE research_papers (
    id INT PRIMARY KEY,
    student_id INT, 
    grade VARCHAR(1) CHECK (grade IN ('A', 'B', 'C', 'D', 'E', 'F')),
    FOREIGN KEY (student_id) REFERENCES students(id)
);




INSERT INTO research_papers (id, student_id, grade)
VALUES
(1, 1, 'B'),
(2, 1, 'A'),
(3, 2, 'A'),
(4, 2, 'C'),    
(5, 3, 'C'),
(6, 3, 'D'),
(7, 4, NULL),   
(8, 5, 'E'),
(9, 6, NULL),   
(10, 6, 'A');

SELECT s.first_name, s.last_name, COUNT(r.id) AS number_of_research_papers
FROM students s
JOIN research_papers r ON s.id = r.student_id
GROUP BY s.id, s.first_name, s.last_name
HAVING COUNT(r.id) > 1;


SELECT s.first_name, s.last_name, r.id, r.grade
FROM students s
JOIN research_papers r
ON s.id = r.student_id
WHERE r.grade IS NULL;
