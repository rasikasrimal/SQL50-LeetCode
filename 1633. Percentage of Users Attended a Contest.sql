select contest_id, ROUND(100*count(user_id)/(select count(user_id) from users),2) as percentage 
from register
group by contest_id
order by percentage DESC, contest_id;
