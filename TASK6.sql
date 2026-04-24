--Task 6:
--A multinational company is developing a centralized HR reporting system to analyze employee performance across departments. Currently, data is stored in multiple normalized
-tables such as EMPLOYEES, DEPARTMENTS, JOBS, and JOB_HISTORY.The management wants a single reusable structure that provides employeefull name, department name, job title, and salary details, but only for employees 
--whose salary is above the company’s average salary.Additionally, the system should ensure that the query remains simple for analysts and avoids rewriting complex joins repeatedly.
Task:
-- Design and implement a solution using SQL that:
--Combines data from multiple tables using appropriate joins
-Filters employees based on average salary (use subquery/inline view)
--Stores the result in a reusable database object
--Ensures the output can be queried easily by end users

create view company_view as
select * from( 
select e.first_name,e.last_name,d.department_name,j.job_title,e.salary
from departments d 
join employees e on e.department_id=d.department_id
join jobs j on j.job_id=e.job_id
where e.salary>(select avg(e.salary) from employees e)
order by e.salary desc);
