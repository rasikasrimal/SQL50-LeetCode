select k.project_id as project_id, ROUND(SUM(k.experience_years)/COUNT(k.project_id), 2) as average_years
from (select p.project_id, p.employee_id, e.name, e.experience_years
from project as p
left join employee as e
on p.employee_id = e.employee_id) as k
group by project_id;
