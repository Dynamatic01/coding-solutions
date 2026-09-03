-- your code goes here
select so.song_name from song so
 join liked_by lb on
so.song_id = lb.song_id
group by so.song_name,
so.song_id
order by count(lb.user_id) desc limit 1;