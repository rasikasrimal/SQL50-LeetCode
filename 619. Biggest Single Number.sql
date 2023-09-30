select MAX(num) as num from (select num, count(num) from mynumbers
group by num
HAVING count(num) = 1) AS K;
