select class
from courses 
group by class
HAVING count(class) >= 5;
