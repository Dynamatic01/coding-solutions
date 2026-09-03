# SQLP183

![Difficulty](https://img.shields.io/badge/Difficulty-Medium-yellow)

## Problem

**Case Study: Dotify Music App** 

- Data Scientists at Dotify wants to know the names of singers which are also users on our platform.
### Task
- Write a query to Print singer_name which are also users;
### Expected Output Format

 **singer_name** 

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
**Submitted:** 2026-09-03T16:52:12.089Z  

```sql
-- your code goes here
select singer_name from singer 
where user_id is not null;
```

---

[View on CodeChef](https://www.codechef.com/problems/SQLP183)