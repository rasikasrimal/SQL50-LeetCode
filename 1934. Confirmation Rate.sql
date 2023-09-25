Select k.user_id,ROUND(k.confirmation_rate,2) as confirmation_rate
FROM (SELECT
    user_id,
    SUM(CASE WHEN action = 'timeout' THEN 1 ELSE 0 END) AS time_out_count,
    SUM(CASE WHEN action = 'confirmed' THEN 1 ELSE 0 END) AS confirmed_count,
    COUNT(*) AS total,
    CASE 
        WHEN COUNT(*) = 0 THEN 0
        ELSE SUM(CASE WHEN action = 'confirmed' THEN 1 ELSE 0 END) / COUNT(*)
    END AS confirmation_rate
FROM (select s.user_id, c.action
from Signups as s
left join confirmations as c
on s.user_id = c.user_id) AS C
GROUP BY user_id) as k;
