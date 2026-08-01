# SQLPBP08

![Difficulty](https://img.shields.io/badge/Difficulty-Medium-yellow)

## Problem

### Salary of Employees
### Task

Create a query to retrieve the employee_name, company, and salary for employees in the full-time category, ordered by salary in  **descending**  order

 **Table name** : `Employees`

employee_id	employee_name	company	category	department	salary
1	John Smith	TechCorp	Full-Time	Engineering	80000
2	Alice Johnson	TechCorp	Part-Time	HR	30000
3	Bob Brown	FinServ	Full-Time	Finance	90000
4	Carol White	HealthPlus	Contract	IT	75000
5	David Green	TechCorp	Full-Time	Engineering	85000
6	Emma Blue	FinServ	Part-Time	Finance	32000
7	Frank Black	HealthPlus	Full-Time	HR	60000
8	Grace Grey	TechCorp	Full-Time	Marketing	70000
9	Henry Red	FinServ	Contract	IT	95000
10	Ivy Yellow	HealthPlus	Part-Time	Marketing	28000
### Expected column
- employee_name
- company
- salary

## Solution

**Language:** SQL  
**Runtime:** N/A  
**Memory:** N/A  
**Submitted:** 2026-08-01T16:36:39.658Z  

```sql
--your code goes here
select employee_name,company, salary from Employees 
where category = 'Full-Time' 
order by salary desc;
```

---

[View on CodeChef](https://www.codechef.com/problems/SQLPBP08)