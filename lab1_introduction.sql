CREATE TABLE ADVANCED;
USE ADVANCED;
CREATE TABLE Student(
	id int,
	name varchar(50),
	RN int,
	batch varchar(50)
);
CREATE TABLE Teacher(
	tid int, 
	name varchar(50),
	faculty varchar(50)
);
insert into Student values (1, 'Sonim', 36, 'BEI');
insert into Student values (2, 'Sonim2', 78, 'BCT');
insert into Student (id, name, RN, batch) values	(3, 'ram', 23, 'BCE'),
													(4, 'sam', 45, 'ASD'), 
													(5, 'tyrell', 64, 'KJU');
insert into Teacher values (1, 'teacher1', 'science'),
							(2, 'akr', 'edc'),
							(3, 'pcr', 'edc'),
							(4, 'npa', 'math'),
							(5, 'dgm', 'math');
select * from Student
select * from teacher

select id, name from Student

select name, faculty from teacher

alter table Student
drop column RN

alter table teacher
add salary float

select ID, name into info_student from student
select * from info_student

delete info_student
