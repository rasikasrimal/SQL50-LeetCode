select q1.person_name, SUM(q2.weight)
from queue q1 join queue q2 on q1.turn >= q2.turn
group by q1.turn
HAVING SUM(q2.weight) <= 1000;
