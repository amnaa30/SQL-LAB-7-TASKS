--Task 4: 
--Design a report system view that:
--Uses JOIN (multiple tables)
--Applies WHERE condition
--Includes employees with salary > average (use inline query)
--Uses ORDER BY

create view report_view as 
select * from (
select e.first_name,d.department_name,j.job_title
from departments d
join employees e on e.department_id=d.department_id
join jobs j on j.job_id=e.job_id
where e.salary>(select avg(e.salary)from employees e)
order by e.salary desc);
