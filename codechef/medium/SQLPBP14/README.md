# SQLPBP14

![Difficulty](https://img.shields.io/badge/Difficulty-Medium-yellow)

## Problem

### Average Salary
### Task
- Write a query to calculate the average salary across all companies combined. Rename the column as avg_salary.

 **Table name:**  `Works`

employee_id	company_name	salary
1	TechCorp	75000.00
2	InnovateLtd	62000.50
3	HealthPlus	54000.75
4	EduWorks	48000.00
5	GreenTech	68000.00
6	TechCorp	80000.00
7	InnovateLtd	66000.20
8	HealthPlus	50000.10
9	EduWorks	51000.00
10	GreenTech	72000.00
### Expected column
- avg_salary

## Solution

**Language:** SQL  
**Runtime:** N/A  
**Memory:** N/A  
**Submitted:** 2026-07-29T18:23:17.252Z  

```sql
-- your code goes here
select avg(salary) as avg_salary from works;
```

---

[View on CodeChef](https://www.codechef.com/problems/SQLPBP14)