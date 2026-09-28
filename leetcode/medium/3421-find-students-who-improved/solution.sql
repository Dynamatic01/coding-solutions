# Write your MySQL query statement below
with cte as 
(
select s1.*, s2.exam_date as nxt_date , s2.score as nxt_score, row_number() over(partition by s1.student_id, s1.subject order by s1.exam_date,s2.exam_date desc) as rnk
from scores as s1
left join scores as s2
on s1.student_id = s2.student_id
and s1.subject = s2.subject
and s1.exam_date < s2.exam_date
where s2.exam_date is not null
)
select student_id, subject, score as first_score ,nxt_score as latest_score 
from cte 
where rnk =1
and nxt_score > score