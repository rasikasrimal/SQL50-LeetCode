# Write your MySQL query statement below
SELECT Employee.name, Bonus.bonus
FROM Employee
LEFT JOIN Bonus on Employee.empid = Bonus.empid
WHERE Bonus.bonus <1000 OR Bonus.bonus IS NULL;;
