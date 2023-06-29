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

alter table Student
ADD CONSTRAINT P_stu PRIMARY KEY (id)

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
	CONSTRAINT P_iid PRIMARY KEY(iid, name),
);
drop table Issues
alter table student
ALTER COLUMN id int NOT NULL

select * from student
alter table student
add tid int

--lab 3--

alter table teacher
alter column tid int not null

alter table teacher
add constraint tid primary key(tid)

alter table Student
add constraint F_KK foreign key (tid) references teacher (tid)

update student 
set tid=5 where id=5 
select * from student

alter table employee
add default '2010-1-1' for dateofemploy

insert into employee (eid) values(1), (2), (3), (4), (5)

--add bid of book as foreign key of booklist

alter table booklist
add bid int 

alter table booklist
add foreign key (bid) references book(bid)

select * from booklist

--add iid of issues as foreign key of book--

alter table book
add iid int

alter table book 
add foreign key (iid) references Issues(iid)

--check books price < Rs 5000--

alter table book
add constraint price_lt_5000 check(price < 5000)

--ename, bname, name must contain some value--

alter table Employee
alter column ename varchar(50) not null

--setting default ename to 'sam' so its not null
update employee
set ename='sam'

--bname should not be null--
alter table book
alter column bname varchar(50) not null

--bname should not be null--
alter table booklist 
alter column bname varchar(50) not null

--print tables
select * from Employee
select * from booklist
select * from book
select * from issues

--insert 4 records in each relation--
insert into employee values(1,'ram','2010-1-1',20000),
						   (2,'shyam','2011-5-2',150000),
						   (3,'hari','2012-6-6',9000),
						   (4,'prakash','2013-5-9',25000);
						   drop table employee;
						   

insert into booklist values(1,'math','read more', 1),
						   (2,'science','puspa',2),
						   (3,'social','mcGraw Hill',3),
						   (4,'physics','stanford',4);

insert into issues values (1, 'math', '2019-1-12'),
							(2, 'science', '2020-1-2'),
							(3, 'social', '2020-1-2'),
							(4, 'physics', '2020-1-2');

insert into book values    (1,'math','IA',4000,1),
						   (2,'science','HPK',2000,2),
						   (3,'social','SA',1000,3),
						   (4,'physics','SPA',3000,4); 
 
 --display cid and ename of all employee whose salary is less than 10,000--
 select eid, ename from employee where salary<10000;

 --display all records of book whose price ranges from 2500 to 5000--
 select * from book where price between 2500 and 5000

 --display all tecord fro booklist relation whose publication name starts from 'e'--
 select * from booklist where publication like 'm%'

 --11. display all record from employee table whose name ends with 'ta'
 select * from employee where ename like '%am'

 --12. display iid and name from issues table whose name exactly consist 5 character
select iid, name from issues where name like '____'

--13. display all record from employee table whose name starts with 's' and salary greater than 10,000
select * from employee where ename like 's%' and salary > 10000

--14. display al record from book record whrere either bookid lied in range 1001 to 2000 or price range in 1000 and 2500
select * from book where bid between 1001 and 2500 or price between 1000 and 2500

--15. display isbn number and bookname where booklist must not conatain isbn no 1003.
select isbn, bname from booklist where isbn not like '2'
