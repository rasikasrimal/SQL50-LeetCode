select name from Employee
where name IN (
    select e1.name from (
        select e1.name, count(e2.managerId)
        from Employee as e1
        inner join Employee as e2
        on e1.id = e2.managerId
        group by e1.name
        HAVING count(e2.managerID) >= 5) as e1
);
