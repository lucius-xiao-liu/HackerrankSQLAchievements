select company.company_code,founder,count(distinct employee.lead_manager_code),count(distinct employee.senior_manager_code),count(distinct employee.manager_code),count(distinct employee.employee_code)
from company
inner join Lead_Manager on company.company_code = lead_manager.company_code
inner join Senior_Manager on lead_manager.lead_manager_code = senior_manager.lead_manager_code
inner join Manager on senior_manager.senior_manager_code = manager.senior_manager_code
inner join Employee on Manager.Manager_code = Employee.Manager_code
Group by company.company_code,company.founder
order by company.company_code;
