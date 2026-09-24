# Write your MySQL query statement below
select  stock_name,
sum(case when operation  = 'Buy' then price*-1 else price END) as capital_gain_loss 
from stocks
group by stock_name