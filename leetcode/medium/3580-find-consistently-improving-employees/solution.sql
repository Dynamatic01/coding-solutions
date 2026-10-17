# Write your MySQL query statement below
with cte as
(select * ,row_number() over(partition by employee_id order by review_date  desc ) as rnk
from performance_reviews p),

cte2 as 
(select employee_id , sum(case when rnk = 1  then rating END) as r1,
sum(case when rnk = 2  then rating END) as r2,
sum(case when rnk = 3  then rating END) as r3
from cte 
where rnk <= 3
group by employee_id)

select c1.employee_id, e.name, (c1.r1 - c1.r3) as improvement_score 
from cte2 as c1
left join employees e on 
c1.employee_id =e.employee_id 
where c1.r1 is not NULL and
c1.r2 is not NULL and
c1.r3 is not NULL and
c1.r1 > c1.r2 and 
c1.r2 > c1.r3
order by improvement_score desc, e.name asc