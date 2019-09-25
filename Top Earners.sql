select top 1 (months*salary) as EmpSalary, count(employee_id) 
from Employee 
group by (months*salary)
order by EmpSalary desc
