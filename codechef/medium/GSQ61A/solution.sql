/* Write a query to join the table 'student' and 'course' using 'Course_id' to match both the tables and output the joined table. */

select * from student s 
join course c on 
s.Course_id = c.Course_id