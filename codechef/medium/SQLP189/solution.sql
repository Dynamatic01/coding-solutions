-- your code goes here
select so.song_id from song so 
left join belongs_to bt on 
so.song_id = bt.song_id
where bt.song_id is null;