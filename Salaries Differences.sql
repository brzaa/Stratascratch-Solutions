select abs(max(a.salary))-(max(b.salary))
from db_employee a, db_employee b
where a.department_id = 4 and b.department_id = 1