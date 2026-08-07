# Draw The Triangle 1

![Difficulty](https://img.shields.io/badge/Difficulty-Medium-yellow)

## Problem

_P(R)_ represents a pattern drawn by Julia in _R_ rows. The following pattern represents _P(5)_:


    * * * * * 
    * * * * 
    * * * 
    * * 
    *

Write a query to print the pattern _P(20)_.


**Input Format**

 

**Constraints**

 

**Output Format**

## Solution

**Language:** SQL  
**Runtime:** N/A  
**Memory:** N/A  
**Submitted:** 2026-08-07T16:15:35.076Z  

```sql
/*
Enter your query here.
*/
SET @row = 21;

SELECT REPEAT('* ', @row := @row - 1)
FROM information_schema.tables
LIMIT 20;

```

---

[View on HackerRank](https://www.hackerrank.com/challenges/draw-the-triangle-1/problem)