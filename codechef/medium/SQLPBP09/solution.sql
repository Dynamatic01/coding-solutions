-- your code goes here
SELECT department,
       COUNT(*) AS total_employees
FROM Employees
GROUP BY department;