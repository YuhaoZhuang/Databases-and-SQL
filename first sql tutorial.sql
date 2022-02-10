CREATE DATABASE lol;
USE lol;

CREATE TABLE student_1 (
	student_id INT auto_increment, 
	name VARCHAR(20) not null, 
	major VARCHAR(20) default 'undecided', 
	PRIMARY KEY(student_id)
);

describe student_1;

drop table student_1;

alter table student_1 add gpa decimal(3,2); 
-- add a new column (new criteria) 
describe student_1; 

insert into student_1 values(1, 'Jack', 'Biology', '2.1');
insert into student_1 values(2, 'Kate', 'Sociology', '3.56');
insert into student_1(student_id, name) values(3, 'Kate');
insert into student_1(name, major, gpa) values('Tom', 'History', '2.45');
-- even with auto increment, need to specify behind the table name which values you are inserting into 

describe student_1;

select * from student_1;

update student_1 set major = 'bio' where major = 'biology'; 
update student_1 set major = 'social' where major = 'Sociology';
update student_1 set gpa = '3.53' where name = 'Kate';
update student_1 set major = 'Computer Science' where student_id = 3;
update student_1 set name = 'Yuha', gpa = '3.52' where student_id = 3; 

update student_1 set major = 'Biochemistry' where major = 'bio' or major = 'chemistry';

-- update student_1 set major = 'undecided'; (this will change all rows) 

-- delete from student_1; (this will delete the entire table) 
delete from student_1 where student_id = 4; 
-- can add condtional statement like and or behind the where in delete statements 

insert into student_1 values(4, 'Tom', 'History', '3.16');
insert into student_1 values(5, 'Willson', 'Physics', '2.56');
insert into student_1 values(6, 'Peter', 'Design', '3.10');
insert into student_1 values(7, 'Patrick', 'Design', '3.70');

select * from student_1;
select name, major from student_1 order by name; 	
-- order by name automatically set to return all the info where the name are in ascending alphabetical order 
select name, major from student_1 order by name DESC; 	
select * from student_1 order by gpa DESC; 
select * from student_1 order by major, gpa DESC; 
-- order first by major, then if it's within same major, sort via gpa descendingly 

select * from student_1 limit 2; 
select * from student_1 order by gpa desc limit 2; 

select * from student_1 where major = 'Design';
select name, major,gpa from student_1 where major = 'Design' or major = 'Computer Science';
-- <> is != (not equal)

select name, major, gpa from student_1 where major <> 'Design' and  major <> 'Computer Science';

select name, major from student_1 where gpa >= '3.0';

select * from student_1 where name in ('Kate', 'Tom', 'Patrick') and gpa >='3.0';









