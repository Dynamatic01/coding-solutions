# Find COVID Recovery Patients

![Difficulty](https://img.shields.io/badge/Difficulty-Medium-yellow)

## Problem

Table: `patients`

```
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| patient_id  | int     |
| patient_name| varchar |
| age         | int     |
+-------------+---------+
patient_id is the unique identifier for this table.
Each row contains information about a patient.

```

Table: `covid_tests`

```
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| test_id     | int     |
| patient_id  | int     |
| test_date   | date    |
| result      | varchar |
+-------------+---------+
test_id is the unique identifier for this table.
Each row represents a COVID test result. The result can be Positive, Negative, or Inconclusive.

```

Write a solution to find patients who have  **recovered from COVID**  - patients who tested positive but later tested negative.

- A patient is considered recovered if they have at least one Positive test followed by at least one Negative test on a later date
- Calculate the recovery time in days as the difference between the first positive test and the first negative test after that positive test
- Only include patients who have both positive and negative test results

Return  *the result table ordered by* `recovery_time` *in  **ascending**  order, then by* `patient_name` *in  **ascending**  order*.

The result format is in the following example.

 

 **Example:** 

 **Input:** 

patients table:

```
+------------+--------------+-----+
| patient_id | patient_name | age |
+------------+--------------+-----+
| 1          | Alice Smith  | 28  |
| 2          | Bob Johnson  | 35  |
| 3          | Carol Davis  | 42  |
| 4          | David Wilson | 31  |
| 5          | Emma Brown   | 29  |
+------------+--------------+-----+

```

covid_tests table:

```
+---------+------------+------------+--------------+
| test_id | patient_id | test_date  | result       |
+---------+------------+------------+--------------+
| 1       | 1          | 2023-01-15 | Positive     |
| 2       | 1          | 2023-01-25 | Negative     |
| 3       | 2          | 2023-02-01 | Positive     |
| 4       | 2          | 2023-02-05 | Inconclusive |
| 5       | 2          | 2023-02-12 | Negative     |
| 6       | 3          | 2023-01-20 | Negative     |
| 7       | 3          | 2023-02-10 | Positive     |
| 8       | 3          | 2023-02-20 | Negative     |
| 9       | 4          | 2023-01-10 | Positive     |
| 10      | 4          | 2023-01-18 | Positive     |
| 11      | 5          | 2023-02-15 | Negative     |
| 12      | 5          | 2023-02-20 | Negative     |
+---------+------------+------------+--------------+

```

 **Output:** 

```
+------------+--------------+-----+---------------+
| patient_id | patient_name | age | recovery_time |
+------------+--------------+-----+---------------+
| 1          | Alice Smith  | 28  | 10            |
| 3          | Carol Davis  | 42  | 10            |
| 2          | Bob Johnson  | 35  | 11            |
+------------+--------------+-----+---------------+

```

 **Explanation:** 

- Alice Smith (patient_id = 1): First positive test: 2023-01-15 First negative test after positive: 2023-01-25 Recovery time: 25 - 15 = 10 days
- Bob Johnson (patient_id = 2): First positive test: 2023-02-01 Inconclusive test on 2023-02-05 (ignored for recovery calculation) First negative test after positive: 2023-02-12 Recovery time: 12 - 1 = 11 days
- Carol Davis (patient_id = 3): Had negative test on 2023-01-20 (before positive test) First positive test: 2023-02-10 First negative test after positive: 2023-02-20 Recovery time: 20 - 10 = 10 days
- Patients not included: David Wilson (patient_id = 4): Only has positive tests, no negative test after positive Emma Brown (patient_id = 5): Only has negative tests, never tested positive

Output table is ordered by recovery_time in ascending order, and then by patient_name in ascending order.

## Solution

**Language:** SQL  
**Runtime:** 596 ms (beats 49.96%)  
**Memory:** 0B (beats 100.00%)  
**Submitted:** 2026-10-18T17:38:57.316Z  

```sql
# Write your MySQL query statement b
with cte as 
(select *,row_number() over(partition by patient_id,result order by test_date  ) as rnk1
from covid_tests ),
cte2 as 
(select c1.patient_id,row_number() over(partition by c1.patient_id order by c2.test_date ) as rnk2,
datediff(c2.test_date, c1.test_date) as recovery_time 
from cte as c1
left join cte as c2
on c1.patient_id = c2.patient_id 
and c1.test_date < c2.test_date
where c1.result = 'Positive'
and c1.rnk1 = 1
and c2.result= 'Negative')
select c.patient_id, p.patient_name , p.age, c.recovery_time 
from cte2 as c 
left join patients p
on c.patient_id = p.patient_id 
where c.rnk2 =1
order by c.recovery_time , p.patient_name

```

---

[View on LeetCode](https://leetcode.com/problems/find-covid-recovery-patients/)