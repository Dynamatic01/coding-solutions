# SQLP182

![Difficulty](https://img.shields.io/badge/Difficulty-Medium-yellow)

## Problem

- A user is looking for singers whose names begin with "a". Write a query to complete this task.
### Task
- Write a query to print all the names of singers which starts with ‘a’
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
**Submitted:** 2026-09-03T16:47:25.199Z  

```sql
-- your code goes here
select singer_name from singer
where singer_name like 'a%';
```

---

[View on CodeChef](https://www.codechef.com/problems/SQLP182)