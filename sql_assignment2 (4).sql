create database innomatics_2;
use innomatics_2;
create table employee(
empid int primary key,
empname varchar(100),
department varchar(50),
contact_no bigint,
email_id varchar(100),
emp_head_id int
);

create table empdept(
deptid varchar(50) primary key,
deptname varchar(100),
dept_off varchar(100),
depthead int
);

create table empsalary(
empid int,
salary bigint,
ispermanent varchar(3),
foreign key (empid)
references employee(empid)
);

show tables;
select * from employee;
insert into employee values
(1,"parag","IT",1234567890,"parag@gmail.com",123);
insert into employee values
(2,"firdous","IT",9876543210,"firdous@yahoo.com",124),
(3,"vishal","CSE",8765432109,"vishal@gmail.com",125),
(4,"saif","DS",7654321098,"saif@gamil.com",126);
insert into employee values
(5,"meghana","HR",321456987,"meghana@yahoo.com",127),
(6,"varsha","HR",456798912,"varsha@gmail.com",128),
(7,"eliya","manager",5678945612,"eliya@gmail.com",129),
(8,"heena","IT",9874123650,"heena@gmail.com",130);
insert into employee values
(9,"faiziba","DS",5879462130,"faiziba@gmail.com",131),
(10,"nandita","CSE",1254698730,"nandita@yahoo.com",132),
(11,"charan","CSE",987456841,"charan@yahoo.com",133);

alter table empdept
modify column depthead varchar(20);
desc empdept;

insert into empdept values
("IT02","IT","nampally","HYD");
insert into empdept values("IT01","IT","monikonda","HYD");
select * from empdept;
insert into empdept values
("DS","DS","kukatpally","HYD");
insert into empdept values
("IT","IT","RangaReddy","RR");
insert into empdept values
("DS01","DS","secndrabad","sec"),
("CSE01","CSE","malakpet","HYd");
insert into empdept values
("HR02","HR","dilsukhnagar","HYD");
select * from empdept;
insert into empdept values
("DS01","DS","arekaere","banglore");
insert into empdept values
("CSE","CSE","gachibowli","HYD");
insert into empdept values
("CSE03","CSE","tolichowki","HYD"),
("DS04","DS","dilsukhnager","HYD");

insert into empsalary values
(2,20000,"yes"),
(4,40000,"no"),
(7,50000,"yes"),
(9,60000,"no");
insert into empsalary values
(4,30000,"yes"),
(6,50000,"no"),
(7,20000,"yes"),
(2,60000,"yes"),
(1,45000,"yes"),
(1,32000,"no"),
(8,65000,"no");

#2
select * from employee where empname like "p%";
select count(ispermanent) from empsalary where salary>50000;
select * from employee where email_id like "%gmail%";

#3
select sum(salary) as total_salary from empsalary where ispermanent="yes";
select empname from employee where empname like "%a" ;

select * from employee;
update employee set emp_head_id=129 where empname="vishal";
set sql_safe_updates=0;
update employee set empname="abhishek" where empname="eliya";


#5
select * from employee e
left join empsalary s
on e.empid=s.empid;

select * from employee e
right join empdept d
on e.empid=d.deptid;

select * from employee e 
inner join empdept d
on e.department=d.deptname;

select * from employee e 
cross join empdept d
on e.department=d.deptname;

joins are as same as "merge"in pandas 
when we join tables it provides correponding data based on condition
when we make inner join it will give you common data of both joined table
in left join it will provide all the left data of joined tables
in right join it will give all the data from right table with respect to condition
where as cross join is differnt from all above joins,like
means that lets suppose 1 table has 5 rows and another table has 2 columns it will give output as (5**2) based on the condition
As in the above tables there is no as such common data so is taking all into consideration

#6
update employee set empname="maria" where empid = 10;
#7
delete from employee where empid=10;
#8
alter table employee
add column address varchar(100);

alter table employee 
drop column address;

#9
select salary, count(salary) from empsalary group by salary;

#10
select count(empid) as no_emp,salary from empsalary group by salary order by salary desc;
select count(empid) as no_emp,salary from empsalary group by salary order by salary desc limit 5;

#11
in database tables or data is interconnected so to get the common data we use joins
joins are used to join 2 or more table based on condition to get the relevent data 
types of joins
1. inner join:-gives common data of joined tables
2. right join:-gives all rightside data of joined tables but excepting common data
3. left join:-gives all leftside data of joined tables but excepting common data
4. cross join:-when tables are cross joined it gives output as
let suppose 1 table has 2 rows with 3 cols and another table is having 10rows with 1 col
then output would be 2*10 ie 20
5. self join:- table is joined to itself,while self joinng same table is treated as 2 different tables

# 12
union command is used to give output by combining  the columns of tables having the same datatype 
it will give combined data of columns but excluding duplicate values
select empid from employee
union 
select empid from empsalary;  

select department from employee
union
select deptname from empdept;

intersect give commom data of combined columns,but intersect is not supported by mysql
select department from employee
Intersect
select departname from empdept;

minus gives the output,which is present in one column and not present in another column
it is not supported by mysql
select empid from employee
minus
select empid from empsalary;

#13
truncate is DDL command,it removes all the rows ,but structure of data remains as it is,when the command is executed there will be 
no rollback
drop is DDL command,it deletes entire schema,once drop command is executed there is no rollback
delete is DML command,it will remove the rows based on condition,
when it comes to delete it is essential to pass the condition ,otherwise it will delete all the rows,
data canbe rollback before commit 














