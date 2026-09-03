# SQLP190

![Difficulty](https://img.shields.io/badge/Difficulty-Medium-yellow)

## Problem

**Case Study: Dotify Music App**  -Data scientists at Dotify defined a new term called as "Multi-Mood" songs, which is a collection of songs which can be played in different contexts. Technically they defined a song to be a part of Multi-Mood category if it present in at least two playlist's.

### Task
- Write a query to Return the list of songs which are present in at least two playlist.
### Expected Output Format

 **song_id** 
 **song_name** 

 **Using Self Join is a good approach to handle such queries** 

### Description of Tables
- PK stands for Primary Key
- FK stands for Foreign Key
### Dataset tables
- User
- Song
- Singer
- Liked_by
- Follower
- Belongs_to
- Playlist

## Solution

**Language:** SQL  
**Runtime:** N/A  
**Memory:** N/A  
**Submitted:** 2026-09-03T17:34:55.575Z  

```sql
-- your code goes here
select distinct so.song_id, so.song_name from song so 
 join belongs_to  bt1
on so.song_id = bt1.song_id
join belongs_to bt2
on bt1.song_id = bt2.song_id
and bt1.playlist_id <> bt2.playlist_id;
```

---

[View on CodeChef](https://www.codechef.com/problems/SQLP190)