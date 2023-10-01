select e1.employee_id, e1.name, COUNT(e2.reports_to) as reports_count, ROUND(AVG(e2.age)) as average_age
from employees as e2
inner join employees as e1
on e1.employee_id = e2.reports_to
group by employee_id
order by employee_id;
