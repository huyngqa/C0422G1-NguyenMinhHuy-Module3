DROP DATABASE student_management;
CREATE DATABASE student_management;
USE student_management;

CREATE TABLE student (
    id_student INT NOT NULL PRIMARY KEY,
    name_student VARCHAR(4) NULL,
    age INT NULL,
    country VARCHAR(45)
);

CREATE TABLE teacher (
    id_teacher INT NOT NULL PRIMARY KEY,
    name_teacher VARCHAR(4) NULL,
    age INT NULL,
    country VARCHAR(45)
);

CREATE TABLE class (
    id_class INT NOT NULL PRIMARY KEY,
    name_class VARCHAR(45) NULL
);