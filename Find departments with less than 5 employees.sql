select department, count(worker_id) as total_dept
from worker
group by department
having count(department) < 5