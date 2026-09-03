# SQLP184

![Difficulty](https://img.shields.io/badge/Difficulty-Medium-yellow)

## Problem

**Case Study: Dotify Music App** 

- We want to know the names of Famous singers. A singer having more than 2 followers is considered as Famous.
### Task
- Write a query to Output the singer_name's and Count of Followers as Count which have more than 2 followers
### Expected Output Format

 **singer_name** 
 **Count** 

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
**Submitted:** 2026-09-03T17:00:42.423Z  

```sql
-- your code goes here
select sg.singer_name, count(f.user_id) as count from singer sg 
join follower f on 
sg.singer_id  = f.singer_id
group by 
sg.singer_id,
sg.singer_name
having count(f.user_id) >2;

```

---

[View on CodeChef](https://www.codechef.com/problems/SQLP184)