select b.restaurant_id,sum(a.sales_amount) as total
from order_value_dd a
join delivery_orders b
on a.delivery_id = b.delivery_id
where year(order_placed_time) = 2022
group by 1
order by 2 desc
limit 4