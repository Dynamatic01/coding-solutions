-- your code goes here
select distinct so.song_id, so.song_name from song so 
 join belongs_to  bt1
on so.song_id = bt1.song_id
join belongs_to bt2
on bt1.song_id = bt2.song_id
and bt1.playlist_id <> bt2.playlist_id;