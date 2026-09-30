# Write your MySQL query statement below
-- select user_id,
-- round(avg((case when activity_type = 'free_trial' then activity_duration else NULL END)),2) as trial_avg_duration,
-- round(avg((case when activity_type = 'paid' then activity_duration else NULL END)),2) as paid_avg_duration  
-- from UserActivity 
-- group by user_id 
-- having avg(case when activity_type = 'paid' then activity_duration else NULL END) is not NULL
-- order by user_id ;



SELECT
    user_id,
    ROUND(AVG(CASE
        WHEN activity_type = 'free_trial' THEN activity_duration
    END), 2) AS trial_avg_duration,
    ROUND(AVG(CASE
        WHEN activity_type = 'paid' THEN activity_duration
    END), 2) AS paid_avg_duration
FROM UserActivity
GROUP BY user_id
HAVING
    COUNT(CASE WHEN activity_type = 'free_trial' THEN 1 END) > 0
    AND
    COUNT(CASE WHEN activity_type = 'paid' THEN 1 END) > 0
ORDER BY user_id;