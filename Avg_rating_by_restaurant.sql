select avg(overall_rating), restaurant_name
from ratings as ra
inner join orders as o
on o.order_id = ra.order_id
inner join restaurant as re
on re.restaurant_id = o.restaurant_id
group by o.restaurant_id