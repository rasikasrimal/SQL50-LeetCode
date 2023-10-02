select l1.num as ConsecutiveNums
from
logs l1, 
logs l2, 
logs l3
where
l1.id = l2.id - 1 AND l2.id = l3.id - 1 AND
l1.num = l2.num AND l1.num = l3.num
group by l1.num;
