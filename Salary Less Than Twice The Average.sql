with emp as
(select manager_empl_id, avg(salary) emp_avg_salary
from map_employee_hierarchy a
join dim_employee b on a.empl_id = b.empl_id
group by 1
)

select m.manager_empl_id,m.emp_avg_salary,n.salary
from emp m
join dim_employee n
on m.manager_empl_id= n.empl_id
where n.salary < 2*emp_avg_salary
group by 1
