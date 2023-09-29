select product_id, year as first_year, quantity, price
from Sales
where (product_id, year) IN (
  select product_id, MIN(year)
  from sales
  group by product_id
)
