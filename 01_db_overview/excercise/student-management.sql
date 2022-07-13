create database student_management;
use student_management;
create table student (
  id_student int not null primary key,
  name_student varchar(4) null,
  age int null,
  country varchar(45)
);
create table teacher (
  id_teacher int not null primary key,
  name_teacher varchar(4) null,
  age int null,
  country varchar(45)
);
create table class (
  id_class int not null primary key,
  name_class varchar(45) null
);