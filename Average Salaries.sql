select department,first_name,salary,
avg(salary) over (partition by department) as avg
from employee
