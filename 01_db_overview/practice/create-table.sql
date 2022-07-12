create database `student-management`;
create table `student-management`.`student` (
  `id` int not null primary key,
  `name` varchar(4) null,
  `age` int null,
  `country` varchar(45)
);
