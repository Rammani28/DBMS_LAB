CREATE DATABASE advanc;
USE advanc;
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
													(4, 'sam', 45, 'BCE'), 
													(5, 'tyrell', 64, 'IOE');

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


-- lab2 constraints, integrity and where clause--

alter table Student;
alter column

CREATE TABLE Employee(
	eid int NOT NULL,
	ename varchar(50),
	dateofemploy date,
	salary float,
	CONSTRAINT P_K PRIMARY KEY(eid),
);

CREATE TABLE Booklist(
isbn int NOT NULL,
bname varchar(50),
publication char(20),
CONSTRAINT P_BK PRIMARY KEY(isbn),
);

CREATE TABLE Book(
	bid int NOT NULL,
	bname varchar(30),
	author varchar(30),
	price float,
	CONSTRAINT P_bid PRIMARY KEY(bid),
);

CREATE TABLE Issues(
	iid int NOT NULL,
	name varchar(30),
	dateofissue date,
	CONSTRAINT P_iid PRIMARY KEY(iid),
);
drop table Issues
alter table student
ALTER COLUMN id int NOT NULL

--add primary key for student--
alter table Student............

alter table Student
add constraint F_K foreign key (tid) references student(id);