create database innomatics;
use innomatics;
create table student(id int not null auto_increment primary key,name varchar(50),marks varchar(5));
select * from student;
insert into student(name,marks) values("jabeen","90"),("heena","80"),("swathi","60"),("radha","70"),("sonu","68");
select * from student;
delete from student where name="radha";
set sql_safe_updates=0;
select * from student;
insert into student(name,marks) values("afhaam","99"),("ayaan","98"),("armaan","78"),("geetha","67"),("anusha","89");
select * from student;
select sum(marks) from student;
select min(marks) as minimum_marks from student;
select avg(marks) as average_marks from student;
select name from student where marks > 40 and marks < 60;
select id,marks from student order by marks desc;
select *,round(marks/3) as new_marks,(marks*marks) as sq_marks from student;
select ucase(name),lcase(name),mid(name,1,3) from student;
select left(name,3) as first_name,right(name,3) as last_name from student;
select position("a" in name) from student;
select ltrim("  innomatics research labs   ") as left_trim,
rtrim("  innomatics research labs   ") as right_trim,ltrim("  innomatics research labs  ") as trimmed
select  position("a" in name) as matched from student;
select current_date();
select year(current_date()),month(current_date()),day(current_date());
select year (curdate()) as year,monthname(curdate()) as month,dayname(curdate()) as day;
# primary key focuses on uniqueness of table.
# it doesnt contain any duplicate or null values.
# foreign key builds relationship between two tables.