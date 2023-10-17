create database Lms
use Lms
create table loginTable
(
	id int not null IDENTITY(1,1) primary key,
	username varchar(150) not null,
	pass varchar(150) not null,
)
insert into loginTable(username,pass) values ('Admin','pass')
select * from loginTable
create table NewBook
(
	bid int not null IDENTITY(1,1) primary key,
	bName varchar(250) not null,
	bAuthor varchar(250) not null,
	bPubl varchar(250) not null,
	bDate varchar(250) not null,
	bPrice bigint not null,
	bQuan bigint not null,
)
drop table NewBook
select * from NewBook
create table NewStudent
(
	stuid int not null IDENTITY primary key,
	sname varchar(250) not null,
	enroll varchar(250) not null,
	dep varchar(250) not null,
	sem varchar(250) not null,
	contact bigint not null,
	email varchar(250) not null,
)
select * from NewStudent