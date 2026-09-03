# SQLP189

![Difficulty](https://img.shields.io/badge/Difficulty-Medium-yellow)

## Problem

**Case Study: Dotify Music App**  -Dotify also supports the Playlist Feature, where a song can be added to several Playlists, as was previously described in the description of the Tables. But We are interested in knowing the song_id's of songs which are not in any Playlist.

### Task
- Write a query to Return song_id of songs which are not in any playlist
### Expected Output Format

 **song_id** 

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
**Submitted:** 2026-09-03T17:27:45.680Z  

```sql
-- your code goes here
select so.song_id from song so 
left join belongs_to bt on 
so.song_id = bt.song_id
where bt.song_id is null;
```

---

[View on CodeChef](https://www.codechef.com/problems/SQLP189)