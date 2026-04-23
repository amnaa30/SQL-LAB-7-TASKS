Task 3: 
 Create a VIEW that shows:
Employee full name
Department name
Job title


create view myview as
select e.first_name,e.last_name,d.department_name,j.job_title
from departments d
join employees e on e.department_id = d.department_id
join jobs j on j.job_id=e.job_id;
