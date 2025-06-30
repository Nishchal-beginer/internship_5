CREATE DATABASE student;

USE student;

CREATE TABLE student_data (
    Id INT PRIMARY KEY,
    Name VARCHAR(20)
);
INSERT INTO student_data
VALUES
(101,"NISHCHAL KHAJURIA"),
(102,"AKARSH KHAJURIA");
INSERT INTO student_data VALUES(104,"PRANAV KHAJURIA");

SELECT 
    *
FROM
    student_data;

CREATE TABLE course_data (
    Id INT PRIMARY KEY,
    Course_name VARCHAR(20)
);
INSERT INTO course_data 
VALUES
(101,"English"),
(102,"Python"),
(103,"JAVA"),
(105,"C++");

SELECT 
    *
FROM
    course_data;

SELECT 
    *
FROM
    student_data
        INNER JOIN
    course_data ON student_data.Id = course_data.Id;

SELECT 
    *
FROM
    student_data
        LEFT JOIN
    course_data ON student_data.Id = course_data.Id;

SELECT 
    *
FROM
    student_data
        RIGHT JOIN
    course_data ON student_data.Id = course_data.Id;

SELECT 
    *
FROM
    student_data
        LEFT JOIN
    course_data ON student_data.Id = course_data.Id 
UNION SELECT 
    *
FROM
    student_data
        RIGHT JOIN
    course_data ON student_data.Id = course_data.Id;

SELECT 
    *
FROM
    student_data
        LEFT JOIN
    course_data ON student_data.Id = course_data.Id
WHERE
    course_data.Id IS NULL;




