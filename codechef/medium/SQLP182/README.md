# SQLP182

![Difficulty](https://img.shields.io/badge/Difficulty-Medium-yellow)

## Problem

**Case Study: Dotify Music App**  -This case study scenario involves queries raised by users and data scientists of the Dotify App. You have been given a dataset containing a total of 7 tables associated with the case study; it is recommended that you read the description of every table.

### Task
- Write a query to output the table 'User'. Limit your results to 3 rows.
### Expected Output Format

 **user_id** 
 **user_name** 
 **age** 
 **gender** 
 **pincode** 

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
**Submitted:** 2026-09-03T16:45:02.876Z  

```sql
-- your code goes here
select * from user 
order by user_id limit 3;
```

---

[View on CodeChef](https://www.codechef.com/problems/SQLP182)