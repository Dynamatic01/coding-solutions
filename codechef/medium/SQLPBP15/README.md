# SQLPBP15

![Difficulty](https://img.shields.io/badge/Difficulty-Medium-yellow)

## Problem

### Locate People
### Task
- Write a query to retrieve the department_name and location of departments located in a city that starts with 'S'.

Table name:  **`departments`** 

department_id	department_name	location
1	Human Resources	New York
2	Research and Development	San Francisco
3	Sales	Los Angeles
4	Marketing	New York
5	Customer Support	Boston
6	Finance	Austin
7	IT Support	Seattle
8	Product Management	San Francisco
9	Quality Assurance	Los Angeles
10	Legal	Boston
### Expected column
- department_name
- location

## Solution

**Language:** SQL  
**Runtime:** N/A  
**Memory:** N/A  
**Submitted:** 2026-07-30T15:34:54.108Z  

```sql
SELECT department_name, location
FROM departments
WHERE location LIKE 'S%';
```

---

[View on CodeChef](https://www.codechef.com/problems/SQLPBP15)