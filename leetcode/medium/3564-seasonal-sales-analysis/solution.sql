# Write your MySQL query statement below
with cte as (
select s.*, p.category,
case when month(s.sale_date)  in (12,1,2) then 'Winter' 
when month(s.sale_date)  in (3,4,5) then 'Spring' 
when month(s.sale_date)  in (6,7,8) then 'Summer' 
when month(s.sale_date)  in (9,10,11) then 'Fall' END as season  
from sales s
left join products p on 
s.product_id = p.product_id 
),
cte2 as (
select season, category ,sum(quantity ) as total_quantity,
sum(quantity * price) as total_revenue 
from cte 
group by season, category
),
cte3 as (
select *, row_number() over(partition by season order by total_quantity DESC, total_revenue DESC, category ASC
 ) as rnk
from cte2
)
select season,category ,total_quantity ,total_revenue  from cte3
where rnk =1
order by season ;