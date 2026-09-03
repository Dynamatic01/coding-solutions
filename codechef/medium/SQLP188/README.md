# SQLP188

![Difficulty](https://img.shields.io/badge/Difficulty-Medium-yellow)

## Problem

**Case Study: Dotify Music App**  -Consider you are an active user of Dotify, you probably always keep an eye on the best songs on the platform. The song with the most likes overall is considered to be the best song. To find out the title of the Best Song, proceed and complete the following task.

### Task
- Write a query to Output the name of song with maximum number of likes among all songs.
### Expected Output Format

 **song_name** 

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
**Submitted:** 2026-09-03T17:20:36.418Z  

```sql
-- your code goes here
select so.song_name from song so
 join liked_by lb on
so.song_id = lb.song_id
group by so.song_name,
so.song_id
order by count(lb.user_id) desc limit 1;
```

---

[View on CodeChef](https://www.codechef.com/problems/SQLP188)