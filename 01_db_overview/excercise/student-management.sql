create database `student-management`;
create table `student-management`.`student` (
  `id` int not null primary key,
  `name` varchar(4) null,
  `age` int null,
  `country` varchar(45)
);
create table `student-management`.`teacher` (
  `id` int not null primary key,
  `name` varchar(4) null,
  `age` int null,
  `country` varchar(45)
);
create table `student-management`.`class` (
  `id` int not null primary key,
  `name` varchar(45) null
);