# Write your MySQL query statement below

select id , count(*) as num From (SELECT requester_id AS id FROM RequestAccepted 

UNION ALL

SELECT accepter_id   FROM RequestAccepted 
) as freind_count
group by id
order by num desc limit 1;
