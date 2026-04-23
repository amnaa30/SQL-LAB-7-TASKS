Task 2:
 (a) A company wants to see all departments including empty ones.
 Write a query to display department name and employee name using RIGHT OUTER JOIN.

 (b) HR wants to analyze employees who changed jobs.
 Use INTERSECT between EMPLOYEES and JOB_HISTORY.

 (c) Find employees who never changed jobs using MINUS.

--a
select d.department_name,e.first_name
from employees e
right outer join departments d on d.department_id=e.department_id;

--b
select job_id from employees
intersect 
select job_id from job_history;

--c
select employee_id from employees
minus
select employee_id from job_history;
