select activity_date as day, COUNT(distinct user_id) as active_users
from Activity
where activity_date between DATE_SUB('2019-07-27', INTERVAL 29 DAY) AND '2019-07-27'
group by activity_date;
