create database innomatics;
use innomatics;
create table students(
id int not null auto_increment primary key,
name varchar(50),
marks varchar(3)
);
select * from students;
insert into students(name,marks) values
("heena",85),
("vishal",58),
("mah",97),
("ashutosh",89);
select * from students;
delete from students where name="heena";
set sql_safe_updates=0;
select* from students;
insert into students(name,marks) values
("jabeen",52),
("sujay",68),
("ajay",89),
("joe",76),
("ivy",86),
("ileana",50),
("diana",68),
("deril",76);

select * from students;
select * from students where marks<80;
select sum(marks) from students;
select min(marks) as minimum_marks from students;
select max(marks) as maximum_marks from students;
select avg(marks) as average_marks from students;
select name from students where marks>40 and marks<60;
select id,marks from students order by  marks desc;
select *,round(marks/3) as new_marks,(marks*marks) as sq_marks from students;
select ucase(name),lcase(name),mid(name,1,3) from students;
select left(name,3) as first_name,right(name,3) as last_name from students;
select position("a" in name) from students;


select ltrim(" innomatics research labs  ") as left_trim,
rtrim(" innomatics research labs  ") as right_trim,
ltrim(" innomatics research labs  ") as trimmed;

select position("a" in name) as matched from students;

select current_date();
select year(current_date()),month(current_date()),day(current_date());
select year (curdate())as year ,monthname (curdate()) as month,dayname (curdate()) as day;

# primary key and foreign key
#primary key is one of  constarints and the combination of unique and not null,
#a table can have 1 or more primary keys but the combinations of columns should be different
#primary key of one table will become the foreign key of another table having refernce with first table










