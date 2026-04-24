--Task 7:
--A government organization is building a secure employee monitoring system where different departments have restricted access to employee data. The system must allow managers to view only employees belonging to their
--department while also supporting historical analysis of employees who changed jobs.To achieve this, the database team needs to create a controlled layer that restricts data visibility and 
--combines information from multiple sources. Additionally, analysts need a combined dataset of employee IDs from both current employees and job history records for reporting purposes.
 --Task:
 --Design a complete SQL-based solution that:
--Restricts employee data to a specific department using a database object
--Prevents insertion or updates that violate the restriction
--Combines employee data from multiple tables for reporting using set operators
--Ensures security and data integrity

create view government_view as
select e.first_name,d.department_name 
from departments d
join employees e on e.department_id=d.department_id
where d.department_id=90
with check option;
select employee_id from employees
union 
select employee_id from job_history;
