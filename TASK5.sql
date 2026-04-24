--Task 5:
 --Create:
--A view that shows only employees of department 50
--Apply WITH CHECK OPTION
--Combine employee IDs from EMPLOYEES and JOB_HISTORY using UNION


create view dept50_view as 
select first_name,last_name,department_id 
from employees 
where department_id=50
with check option;
select employee_id from employees
union
select employee_id from job_history;
