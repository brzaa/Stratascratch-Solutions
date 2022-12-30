with emp as
(select resp_employee_id,
    rank() over (order by count(distinct(order_id)) desc) rnk
    
from shopify_orders
group by 1)

select last_name 
from shopify_employees a
join emp
on a.id= emp.resp_employee_id
where rnk = 1
