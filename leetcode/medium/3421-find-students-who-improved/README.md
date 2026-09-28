# Find Students Who Improved

![Difficulty](https://img.shields.io/badge/Difficulty-Medium-yellow)

## Problem

Table: `Scores`

```
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| student_id  | int     |
| subject     | varchar |
| score       | int     |
| exam_date   | varchar |
+-------------+---------+
(student_id, subject, exam_date) is the primary key for this table.
Each row contains information about a student's score in a specific subject on a particular exam date. score is between 0 and 100 (inclusive).

```

Write a solution to find the  **students who have shown improvement**. A student is considered to have shown improvement if they meet  **both**  of these conditions:

- Have taken exams in the same subject on at least two different dates
- Their latest score in that subject is higher than their first score

Return  *the result table*   *ordered by*  `student_id,` `subject`  *in  **ascending**  order*.

The result format is in the following example.

 

 **Example:** 

 **Input:** 

Scores table:

```
+------------+----------+-------+------------+
| student_id | subject  | score | exam_date  |
+------------+----------+-------+------------+
| 101        | Math     | 70    | 2023-01-15 |
| 101        | Math     | 85    | 2023-02-15 |
| 101        | Physics  | 65    | 2023-01-15 |
| 101        | Physics  | 60    | 2023-02-15 |
| 102        | Math     | 80    | 2023-01-15 |
| 102        | Math     | 85    | 2023-02-15 |
| 103        | Math     | 90    | 2023-01-15 |
| 104        | Physics  | 75    | 2023-01-15 |
| 104        | Physics  | 85    | 2023-02-15 |
+------------+----------+-------+------------+

```

 **Output:** 

```
+------------+----------+-------------+--------------+
| student_id | subject  | first_score | latest_score |
+------------+----------+-------------+--------------+
| 101        | Math     | 70          | 85           |
| 102        | Math     | 80          | 85           |
| 104        | Physics  | 75          | 85           |
+------------+----------+-------------+--------------+

```

 **Explanation:** 

- Student 101 in Math: Improved from 70 to 85
- Student 101 in Physics: No improvement (dropped from 65 to 60)
- Student 102 in Math: Improved from 80 to 85
- Student 103 in Math: Only one exam, not eligible
- Student 104 in Physics: Improved from 75 to 85

Result table is ordered by student_id, subject.

## Solution

**Language:** SQL  
**Runtime:** 322 ms (beats 61.77%)  
**Memory:** 0B (beats 100.00%)  
**Submitted:** 2026-09-28T08:31:55.295Z  

```sql
# Write your MySQL query statement below
with cte as 
(
select s1.*, s2.exam_date as nxt_date , s2.score as nxt_score, row_number() over(partition by s1.student_id, s1.subject order by s1.exam_date,s2.exam_date desc) as rnk
from scores as s1
left join scores as s2
on s1.student_id = s2.student_id
and s1.subject = s2.subject
and s1.exam_date < s2.exam_date
where s2.exam_date is not null
)
select student_id, subject, score as first_score ,nxt_score as latest_score 
from cte 
where rnk =1
and nxt_score > score
```

---

[View on LeetCode](https://leetcode.com/problems/find-students-who-improved/)