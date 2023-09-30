select customer_id
from customer
group by customer_id
HAVING count(distinct product_key) = (select count(product_key) from product);
