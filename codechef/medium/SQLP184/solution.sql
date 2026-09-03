-- your code goes here
select sg.singer_name, count(f.user_id) as count from singer sg 
join follower f on 
sg.singer_id  = f.singer_id
group by 
sg.singer_id,
sg.singer_name
having count(f.user_id) >2;
