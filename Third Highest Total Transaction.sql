with cte as (
select id,first_name,last_name,dense_rank() over (order by sum(total_order_cost) desc) as rnk
from customers a
join card_orders b
on a.id = b.cust_id
group by 1,2,3)

select id, first_name, last_name
from cte
where rnk = 3