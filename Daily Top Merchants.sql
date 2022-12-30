with rnk as
(select date(order_timestamp) date,b.name,
    dense_rank() over (partition by date(order_timestamp) order by count(a.id) desc) order_rnk
from doordash_orders a
join doordash_merchants b
on a.merchant_id = b.id
group by 1,2)

select date,name,order_rnk
from rnk
where order_rnk <= 3

