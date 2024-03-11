/*This first line creates the database that we are going to use*/
create database edu_institute;
use edu_institute;/*this line allows us to use the database*/
create table students (student_id int primary key,
              student_name varchar(50),
              age int,
              gender char(1),
              enrollment_date date,
              programme varchar(50));
/*the block above creates a table a table and the attributes in the() are the row headings*/
insert into students/*gives us access int the students table*/
(student_id, student_name, age, gender, enrollment_date, programme)
values/*this enables the user input table values*/
('John Elvis', '20', 'm', '2024-01-01', 'web dev');
/*I called on to the table and entered the data through the result grid
I just modified that code to filter the datascience students*/
select * from students where programme = 'data science';
select count(*)/* selecting from the whole table*/
 as "Total Students" from students;/*giving the above selection value of 'Total Students', obtained from students table*/
select current_date()
 as "Today's date";
select upper(student_name)/*this selects the row and converts the data to uppercase*/
as 'Stud_Name', (enrollment_date) as 'Enrollment_Date' from students;
select programme, count(*) AS "Number of Students"
from students
group by Programme
order by count(*) desc;/*orders in descending order*/
select student_name, age
from students
where age=(select min(age) from students);
